<?php

class DataMapper {

    private $pdo;
    public $o;
    private $query_method = PDO::FETCH_ASSOC;
    private $q;
    public $tcols = array();

    public function __construct() {
        try {
            $dbh = new PDO('mysql:host=localhost;dbname=clarity;charset=utf8mb4', 'Spartacus', 'holo3601q2w3e');
            $this->pdo = $dbh;
            $this->o = $dbh;
            $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            $sql = "flush privileges";
            $stmt = $this->pdo->prepare($sql);
            $sql = "flush tables";
            $stmt = $this->pdo->prepare($sql);
            $sql = "SET GLOBAL general_log = 1;";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
        } catch (PDOException $e) {
            var_dump($e);
            exit;
        }
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

	
	public function update_d_kg() {
        $status = "";
        $this->delTable("tmp");
		$sql =<<<EOX
CREATE TABLE tmp SELECT DISTINCT
			s.con_kg,
			i.gdp,
			i.gdp / s.con_kg AS c_d_kg,
			s.item,
			s.resource,
			s.src
		FROM
			V3_item_resource_stats AS s
		INNER JOIN V3_entity_item AS i ON s.item = i.item
		WHERE
			s.item = i.item
		AND i.entity = 'ARGNAT'
		AND s.resource = '_NP';		
EOX;
		
        $this->debug($sql, "update_d_kg (tmp)");
        $r = $this->update($sql, "update_d_kg");
	    $status .= "\tUPDATED [ :: c_d_kg(tmp)\n";

		
        $sql =<<<EOX

		UPDATE V3_item_resource_stats AS v,
		 tmp AS t
		SET v.c_d_kg = t.c_d_kg
		WHERE
			v.item = t.item AND 
		v.resource = t.resource AND
		v.con_kg = t.con_kg AND
	v.src = t.src;
EOX;
		
        $this->debug($sql, "update_d_kg ");
        $r = $this->execute($sql);
	    $status .= "\tUPDATED [ :: c_d_kg\n";
		
		
		
		
		
		
        return($status);
    }
	
	
    public function update_Entity_Service() {
        $r;
        $status = "";
        $sql = <<<EOX
                SELECT
                V3_entity_item.entity,
                V3_entity_service.service_name,
                Sum(V3_entity_service.unique_pop * V3_service_stats.kg) AS c_tot_kg
                FROM
                    V3_entity_item
                    Inner Join V3_entity_service ON V3_entity_item.entity = V3_entity_service.entity_name
                    Inner Join V3_service_stats ON V3_entity_service.service_name = V3_service_stats.name 
                AND 
                    V3_entity_item.item = V3_service_stats.contains          
EOX;
        $this->debug($sql, "update_Entity_Service");
        $r = $this->select($sql);

        $en = $r[0]['entity'];
        $sn = $r[0]['service_name'];
        $t = $r[0]['c_tot_kg'];

        $sql = <<<EOX
                UPDATE V3_entity_service  set c_tot_kg = ${t} 
                WHERE  entity_name ='${en}' and service_name = '${sn}'
EOX;

        $r = $this->update($sql, "update_Entity_Service");
        $this->test("select c_tot_kg from  V3_entity_service");

        $status .= "QUERYING [V3_entity_service :: for c_*\n";
        $status .= "\tUPDATED [ :: c_tot_kg\n";

//        $sql = <<<EOX
//                update V3_entity_service set 
//                c_kg_per_client =  (V3_entity_service.c_tot_kg /V3_entity_service.unique_pop)
//                c_kg_per_event = (V3_entity_service.c_tot_kg /V3_entity_service.returning),
//                c_kg_per_meal = (V3_entity_service.c_tot_kg /(V3_entity_service.returning * V3_entity_service.unique_pop))
//EOX;
//
//        $r = $this->update($sql, "update_Entity_Service");
//        $this->test("select c_kg_per_client,c_kg_per_event,c_kg_per_meal from  V3_entity_service");
//
//        $status .= "\tUPDATED [ :: c_*\n";

        return($status);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function update_newdata_for_svc_Entity_item($item) {
        $status = "";
        $r = null;
//
//        /**         * ********************************* */
//        /*        kg_yr                        */
//        /**         * ********************************* */
//        $sql = <<<EOX
//                UPDATE V3_entity_item,V3_entity_service 
//                SET V3_entity_item.kg_yr = (
//                    SELECT 
//                        (V3_service_stats.kg/V3_entity_service.meals_pp) * V3_entity_service.unique_pop AS c_kg_svc_yr
//                    FROM
//                        V3_service_stats
//                            Inner Join V3_entity_service ON V3_entity_service.service_name = V3_service_stats.name
//                    WHERE
//                        V3_service_stats.contains =  '${item}'
//                )
//                WHERE 
//                    V3_entity_item.entity = V3_entity_service.entity_name AND
//                    V3_entity_item.item = '${item}'          
//EOX;
//
//        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
//        $this->test("select kg_yr from V3_entity_item");
//
//        $status .= "UPDATED [kg_yr]  [V3_entity_item]\n";

        /**         * ********************************* */
        /*        c_kg_svc_single              */
        /**         * ********************************* */
//        $sql = <<<EOX
//                update V3_entity_item,V3_entity_service set
//                V3_entity_item.c_kg_svc_single = (
//                    SELECT
//                    (V3_service_stats.kg/V3_entity_service.meals_pp) as c_kg_svc_single
//                    FROM
//                                    V3_service_stats
//                                    Inner Join V3_entity_service ON V3_entity_service.service_name = V3_service_stats.name
//                    WHERE
//                                    V3_service_stats.contains =  '${item}'                
//                )
//                WHERE 
//                V3_entity_item.entity = V3_entity_service.entity_name AND
//                V3_entity_item.item = '${item}'  
//EOX;
//
//        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
//        $this->test("select c_kg_svc_single from V3_entity_item");
//
//        $status .= "UPDATED [c_kg_svc_single]  [V3_entity_item]\n";

        /**         * ********************************* */
        /*        c_kg_svc_yr                  */
        /**         * ********************************* */
//        $sql = <<<EOX
//                update V3_entity_item,V3_entity_service set
//                V3_entity_item.c_kg_svc_yr = (
//                    SELECT
//                    (V3_service_stats.kg/V3_entity_service.meals_pp) * V3_entity_service.unique_pop AS c_kg_svc_yr
//                    FROM
//                                    V3_service_stats
//                                    Inner Join V3_entity_service ON V3_entity_service.service_name = V3_service_stats.name
//                    WHERE
//                                    V3_service_stats.contains =  '${item}'                
//                )
//                WHERE 
//                V3_entity_item.entity = V3_entity_service.entity_name AND
//                V3_entity_item.item = '${item}'
//EOX;
//
//        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
//        $this->test("select c_kg_svc_yr from V3_entity_item");
//
//        $status .= "UPDATED [c_kg_svc_yr]  [V3_entity_item]\n";

        /**         * ********************************* */
        /*        c_kg_pp_yr                   */
        /**         * ********************************* */
//        $sql = <<<EOX
//                update V3_entity_item,V3_entity_service set
//                V3_entity_item.c_kg_pp_yr = (
//                    SELECT
//                    (V3_service_stats.kg/V3_entity_service.meals_pp) * V3_entity_service.returning AS c_kg_pp_yr
//                    FROM
//                                    V3_service_stats
//                                    Inner Join V3_entity_service ON V3_entity_service.service_name = V3_service_stats.name
//                    WHERE
//                                    V3_service_stats.contains =  '${item}'                
//                )
//                WHERE 
//                V3_entity_item.entity = V3_entity_service.entity_name AND
//                V3_entity_item.item = '${item}'
//EOX;
//
//        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
//        $this->test("select c_kg_pp_yr from V3_entity_item");
//
//        $status .= "UPDATED [c_kg_pp_yr]  [V3_entity_item]\n";

        /**         * ********************************* */
        /*        gdp                          */
        /**         * ********************************* */
        $sql = <<<EOX
                select V3_entity_item.c_kg_val
                FROM
                    V3_entity_item
                WHERE
                    V3_entity_item.entity =  'ARGNAT' AND
                    V3_entity_item.`year` =  '2014' 
                    AND V3_entity_item.item =  '${item}'
EOX;
        $status .= "\tQUERYING [V3_entity_item for ARGNAT...]\n";

        $r = $this->select($sql, "update_newdata_for_svc_Entity_item");
        $nat_kg_gdp = $r[0]['c_kg_val'];

        $sql = <<<EOX
                UPDATE V3_entity_item SET gdp = kg_yr * ${nat_kg_gdp} 
                WHERE
                    V3_entity_item.entity =  'ECOCHE' AND
                    V3_entity_item.`year` =  '2014' 
                    AND V3_entity_item.item =  '${item}'
EOX;
        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
        $this->test("select kg_yr, '*', '${nat_kg_gdp}', gdp from V3_entity_item");

        $status .= "UPDATED [gdp]  [V3_entity_item]\n";

        /**         * ********************************* */
        /*        c_kg_val                     */
        /**         * ********************************* */
        $sql = <<<EOX
                UPDATE V3_entity_item SET c_kg_val = gdp/kg_yr
                WHERE
                    V3_entity_item.entity =  'ECOCHE' AND
                    V3_entity_item.`year` =  '2014' 
                    AND V3_entity_item.item =  '${item}'
EOX;
        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
        $this->test("select 'X3',gdp,'/',kg_yr, c_kg_val from V3_entity_item");

        $status .= "UPDATED [c_kg_val]  [V3_entity_item]\n";



        /**         * ********************************* */
        /*        get the 'official' ratio                   */
        /**         * ********************************* */
        $sql = "DROP TABLE IF EXISTS  _adjust";
        $r = $this->update($sql, "delete old '_adjust' table");


        $sql = <<<EOX
            CREATE TABLE _adjust AS (
                SELECT
                    V3_entity_item.entity,
                    V3_entity_item.item,
                    V3_entity_item.`year`,
                    V3_entity_item.c_kg_val
                FROM
                    V3_entity_item
                WHERE
                    V3_entity_item.entity = 'ARGNAT'
            )

EOX;
        $r = $this->update($sql, "get official ratios for c_kg_val");

        $sql = <<<EOX
            UPDATE 
                    V3_entity_item AS t, 
                    _adjust AS s 
            SET t.c_kg_val = (
                    SELECT s.c_kg_val 
                    WHERE 
                            t.`year` = s.`year` AND  
                            t.item = s.item AND 
                            s.entity = 'ARGNAT'
            ) WHERE 
                    t.`year` = s.`year` AND  
                    t.item = s.item AND 
                    t.entity != 'ARGNAT'
EOX;
        $r = $this->update($sql, "update c_kg_val for non-ARGNAT entities");

        $status .= "ADJUSTED/UPDATED [c_kg_val]  [V3_entity_item]\n";






        /**         * ********************************* */
        /*        c_gdp_pp_yr                  */
        /**         * ********************************* */
        $sql1 = <<<EOX
                CREATE TABLE tmp AS (SELECT
                    V3_entity_item.gdp/V3_entity_stats.pop AS c_gdp_pp_yr,
                    V3_entity_stats.pop,
                    V3_entity_item.entity,
                    V3_entity_item.item,
                    V3_entity_item.`year`,
                    V3_entity_item.gdp
                FROM
                    V3_entity_stats
                    Inner Join V3_entity_item ON V3_entity_stats.entity = V3_entity_item.entity AND V3_entity_stats.`year` = V3_entity_item.`year`
                WHERE
                    V3_entity_item.entity =  'ECOCHE' AND
                    V3_entity_item.item =  '${item}' AND
                    V3_entity_item.`year` =  '2014')
	
EOX;
        $sql2 = <<<EOX
			UPDATE V3_entity_item SET c_gdp_pp_yr = (
				SELECT c_gdp_pp_yr FROM tmp 
				WHERE
				item =  '${item}'        
			)
			WHERE
				V3_entity_item.entity =  'ECOCHE' AND
				V3_entity_item.`year` =  '2014' AND
				V3_entity_item.item =  '${item}';
EOX;

        $r = $this->delTable("tmp");
        $r = $this->update($sql1, "update_newdata_for_svc_Entity_item");
        $r = $this->update($sql2, "update_newdata_for_svc_Entity_item");
        $this->test("select c_gdp_pp_yr from V3_entity_item");

        $status .= "UPDATED [c_gdp_pp_yur]  [V3_entity_item]\n";


        /**         * ********************************* */
        /*        c_kg_meal                */
        /**         * ********************************* */
//        $sql = <<<EOX
//                SELECT DISTINCT
//                V3_service_stats.kg/V3_entity_service.meals_pp AS c_kg_meal
//                FROM
//                V3_entity_service
//                Inner Join V3_service_stats ON V3_entity_service.service_name = V3_service_stats.name
//                Inner Join V3_entity_item ON V3_entity_service.entity_name = V3_entity_item.entity AND V3_entity_service.`year` = V3_entity_item.`year` AND V3_service_stats.contains = V3_entity_item.item
//                WHERE
//                V3_entity_item.item =  '${item}' AND
//                V3_entity_item.entity =  'ECOCHE'
//EOX;
//        $r = $this->select($sql, "update_KgVal_for_svc_Entity_item");
//        $c_kg_meal = $r[0]['c_kg_meal'];
//
//        $sql = <<<EOX
//                update V3_service_item set 
//                    c_kg_pp_meal = ${c_kg_meal} 
//                WHERE
//                    V3_service_item.item =  '${item}' AND
//                    V3_service_item.service_name =  'ECOMEAL'
//EOX;
//        $r = $this->update($sql, "update_KgVal_for_svc_Entity_item");
//        $this->test("select * from V3_service_item");
//
//        $status .= "\tUPDATING [V3_service_item ...]\n";

        return($status);
    }

    /*     * ********************************************************
     * 
     * ******************************************************* */

    public function update_KG_VAL_for_Entity_item() {
        $sql = "UPDATE V3_entity_item set c_kg_val = V3_entity_item.gdp / V3_entity_item.kg_yr";
        $r = $this->update($sql, "update_KG_VAL_for_Entity_item");
        $this->test("select V3_entity_item.gdp, '/', V3_entity_item.kg_yr, c_kg_val from V3_entity_item");

        $status = "UPDATED [V3_entity_item :: c_kg_val]\n";
        return($status);
    }

    /*     * ********************************************************
     * 
     * ******************************************************* */

    public function update_GPD_PP_YR_for_Entity_item() {
        $sql = <<<EOX
            UPDATE V3_entity_item as a, V3_entity_stats as b 
                set a.c_gdp_pp_yr = (SELECT a.gdp/b.pop 
                                    where a.entity = b.entity AND 
                                    a.`year` = b.`year`
                                 )
EOX;

        $r = $this->update($sql, "update_GPD_PP_YR_for_Entity_item");
        $this->test("SELECT a.gdp,'/',b.pop,(a.gdp/b.pop) as c_gdp_pp_yr from V3_entity_item as a, V3_entity_stats as b where a.entity = b.entity AND  a.year = b.year");

        $status = "UPDATED [V3_entity_item :: c_gdp_pp_yr]\n";
        $status .= "\tonly updates ARGNAT entries bc ECO has no GDP\n";
        return($status);
    }

    /*     * ********************************************************
     * 
     * ******************************************************* */

    public function update_Entity_Stats() {
        $sql = <<<EOX
                UPDATE V3_entity_stats set gdp = (
                    SELECT DISTINCT
                        Sum(V3_entity_item.gdp) as tot_gdp
                    FROM
                        V3_entity_item
                    WHERE
                        V3_entity_item.entity =  'ECOCHE' AND
                        V3_entity_item.`year` =  '2014'
                    GROUP BY
                        V3_entity_item.entity,
                        V3_entity_item.`year`
                ) 
                WHERE
                V3_entity_stats.entity='ECOCHE' AND
                V3_entity_stats.`year`='2014'
EOX;

        $r = $this->update($sql, "update_Entity_Stats");
        $this->test("SELECT * from V3_entity_stats");


        $status = "UPDATED [gdp]     [V3_entity_stats]\n";
        return($status);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function update_ARGENT_data_for_Entity_item() {
        $sql = <<<EOX
                UPDATE V3_entity_item,V3_entity_service SET
                V3_entity_item.c_kg_svc_yr = (
                    SELECT
                        (V3_service_stats.kg/V3_entity_service.meals_pp) * V3_entity_service.unique_pop AS c_kg_svc_yr
                    FROM
                        V3_service_stats
                        Inner Join V3_entity_service ON V3_entity_service.service_name = V3_service_stats.name
                    WHERE
                        V3_service_stats.contains =  '${item}'                
                )
                WHERE 
                    V3_entity_item.entity = V3_entity_service.entity_name AND
                    V3_entity_item.item = '${item}'
                
EOX;

        $r = $this->update($sql, "update_newdata_for_svc_Entity_item");
        $this->test("select c_kg_svc_yr from V3_entity_item");

        $status .= "UPDATED [c_kg_svc_yr]  [V3_entity_item]\n";

        return($status);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function update_KG_PP_YR_for_Entity_Item() {
        $sql = <<<EOX
                UPDATE V3_entity_item 
                Inner Join 
                    V3_entity_stats ON V3_entity_stats.entity = V3_entity_item.entity
                Inner Join 
                    V3_entity ON V3_entity_stats.entity = V3_entity.entity

                AND 
                    V3_entity_item.`year` = V3_entity_stats.`year`
                SET 
                    c_kg_pp_yr = (V3_entity_item.kg_yr/V3_entity_stats.pop)
EOX;
        $r = $this->update($sql, "update_KG_PP_YR_for_Entity_Item");
        $this->test("select V3_entity_item.kg_yr,'/',V3_entity_stats.pop,c_gdp_pp_yr FROM V3_entity_item Inner Join V3_entity_stats ON V3_entity_stats.entity = V3_entity_item.entity");  //JWX dup?


        $status = "UPDATED [V3_entity_item :: c_kg_pp_yr]\n";
        $status .= "\tAll entity_items processes\n";
        return($status);
    }

    /*     * ********************************************************
     * 
     * ******************************************************* */

    /*
    17.5 kg_pp_yr
    1% of this = 
            
    0.08 p0 ARGNAT kp_pp_yr
            
    */
    
    
    
    public function update_projections() {
        
        $sql = "DROP TABLE IF EXISTS  V3_pre_proj3";
        $r = $this->update($sql, "delete old '_adjust' table");
        
        
        
        $sql = <<<EOX
			create table V3_pre_proj3
				SELECT 
					 @ITEM					:= P.item as item-- 99%
					,@ARGNAT_PCT 			:=  CAST(1 AS DECIMAL(10,6)) - (P.v_pct_pop/100) 	as NAT_Pop_Pct-- 99%
					,@ECOCHE_PCT 			:= P.v_pct_pop/100									as ECO_Pop_Pct -- 1%
					-- ,@ORG_POP			:= S.pop											as ORG_pop
					,@ARGNAT_kg_pp_yr_TOT	:= ARGNAT.c_kg_pp_yr								as NAT_kg_pp_yr -- 0.088 
					,@ECOCHE_kg_pp_yr_TOT	:= ECOCHE.c_kg_pp_yr								as ECO_kg_pp_yr -- 17.52
					,@ARGNAT_kg_pp_yr_PCT	:= @ARGNAT_kg_pp_yr_TOT * @ARGNAT_PCT				as NAT_Sample -- 0.088 * 99% = 0.08712
					,@ECOCHE_kg_pp_yr_PCT	:= @ECOCHE_kg_pp_yr_TOT * @ECOCHE_PCT				as ECO_Sample -- 17.5 * 1% = 0.175
					,@DELTA 				:= @ARGNAT_kg_pp_yr_PCT + @ECOCHE_kg_pp_yr_PCT		as Proj_NAT_kg_pp_yr -- 0.08712 + 0.175 = 0.26212
					FROM 
						 V3_projections as P
						,V3_entity_item as ARGNAT
						,V3_entity_item as ECOCHE
					WHERE 
						ARGNAT.entity		= 'ARGNAT'
						AND ECOCHE.entity	= 'ECOCHE'
						AND P.item			= ARGNAT.item
						AND P.item			= ECOCHE.item
						AND P.`year`		= ARGNAT.`year`
						AND P.`year`		= ECOCHE.`year`


EOX;
//        $sql = <<<EOX
//                create table V3_pre_proj3
//
//                SELECT
//                    @v_frac_pop                                         := V3_projections.v_pct_pop/100 as v_frac_pop
//                    ,@cv_sample_pop                              := (@v_frac_pop * V3_entity_stats.pop) as cv_sample_pop
//                    ,@ecval := (
//                            SELECT DISTINCT
//                                sum(T.c_kg_pp_yr)
//                            FROM
//                                V3_entity_item AS T
//                                Inner Join V3_projections ON T.`year` = V3_projections.`year`
//                                Inner Join V3_entity_stats ON V3_projections.`year` = V3_entity_stats.`year`
//                            WHERE
//                                T.entity =  'ECOCHE' 
//                                AND V3_entity_stats.entity =  'ARGNAT'
//                    ) as ecval
//                    ,@c_new_kg_item                                     := (@ecval * (V3_entity_stats.pop * @v_frac_pop))   as c_new_kg_item
//                    ,@bau_kg_gdp_item                                   := E.kg_yr                                          as bau_kg_gdp_item
//                    ,@c_reduced                                         := (E.kg_yr * (1-@v_frac_pop))                      as c_redcued
//                    ,@c_reducedby                                       := (E.kg_yr  - @c_reduced)                          as c_redcuedby
//                    ,@c_new_tot_kg_gdp_item                             := ( @c_reduced + @c_new_kg_item )                  as c_new_tot_kg_gdp_item
//                    ,((@c_new_tot_kg_gdp_item - E.kg_yr)/E.kg_yr)*100                                                       as c_kg_delta_pct
//                    ,@bau_gdp                                           := V3_entity_stats.gdp                              as bau_gd
//                    ,@c_item_gdp_pct                                    := (E.kg_yr/@bau_gdp )*100                          as c_item_gdp_pct
//                    ,@c_gdp_reduced                                     := (@bau_gdp  - @c_reducedby)                       as c_gdp_redcued
//                    ,@c_new_tot_kg_gdp                                  := ( @c_gdp_reduced + @c_new_kg_item )              as c_new_tot_kg_gdp
//                    ,@c_gdp_delta_pct                                   := ((@c_new_tot_kg_gdp - @bau_gdp)/@bau_gdp)*100    as c_gdp_delta_pct
//                    ,@c_val_gdp_tot                                     := E.c_kg_val*@c_new_kg_item                        as c_val_gdp_tot
//                    ,V3_entity_stats.pop                                                                                    AS bau_pop
//                    ,E.gdp                                                                                                  AS bau_gdp_item
//                    ,E.entity
//                    ,E.item
//                    ,E.`year`
//                FROM
//                    V3_entity_stats
//                    Inner Join V3_entity_item AS E ON V3_entity_stats.entity = E.entity AND V3_entity_stats.`year` = E.`year`
//                    Inner Join V3_projections ON E.entity = V3_projections.entity AND E.item = V3_projections.item AND E.`year` = V3_projections.`year`
//                WHERE
//                    V3_entity_stats.entity =  'ARGNAT'
//EOX;
        $this->delTable("V3_pre_proj3");
        $r = $this->update($sql, "update_KG_PP_YR_for_Entity_Item");
        $this->test("select V3_entity_item.kg_yr,'/',V3_entity_stats.pop,c_gdp_pp_yr FROM V3_entity_item Inner Join V3_entity_stats ON V3_entity_stats.entity = V3_entity_item.entity");  //JWX dup?


        $status = "UPDATED projections\n";
        return($status);
		
		
		
		
    }    
	
	
	
	
	public function update_NC() {
        
        $this->delTable("tmp");
        
        $sql = <<<EOX
			create table tmp
				SELECT DISTINCT
					a.con_kg + b.con_kg - c.con_kg AS NatCon,
					a.item,
					a.src
				FROM
					V3_item_resource_stats AS a
				INNER JOIN V3_item_resource_stats AS b ON a.item = b.item
				INNER JOIN V3_item_resource_stats AS c ON b.item = c.item
				WHERE
					a.resource = '_NP'
				AND b.resource = 'IMP'
				AND b.src = 'src-1'
				AND c.resource = 'EXP'
				AND c.src = 'src-1'

EOX;
        $r = $this->execute($sql);
		
		
        $sql = <<<EOX
			UPDATE V3_item_resource_stats AS v,
			 tmp AS t
			SET v.con_kg = t.NatCon
			WHERE
				t.item = v.item AND 
				t.src = v.src 
EOX;
		
        $r = $this->update($sql, "update_NC using IMP/EXP data");
		
        $status = "UPDATED V3_item_resource_stats\n";
        return($status);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function getAllData($table) {
        $sql = "select * from ${table}";
        return($this->select($sql));
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function execute($sql) {
        try {
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            return($stmt->fetchAll($this->query_method));
        } catch (PDOException $e) {
            var_dump($e);
        }
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function select($sql, $title = null) {
        try {
            $this->debug($sql, $title);
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            return($stmt->fetchAll($this->query_method));
        } catch (PDOException $e) {
            var_dump($e);
        }
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function test($sql) {
//        $out = `mysql -u root  -t clarity -e "${sql}"`;
//        print(C($out));
//        $out = `mysql -u root  -t clarity -e "select * from V3_entity_item"`;
//        print(M($out));
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function delTable($t) {
        $r = $this->update("DROP TABLE IF EXISTS $t");
        return($r);
    }

    public function update($sql, $title = null) {
        try {
            $this->debug($sql, $title);
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            return(1);
        } catch (PDOException $e) {
            $this->debug($sql, $title);
            print_r($e);
            exit;
        }
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

	
    public function getResNames() {
        $sql = "select name from V3_resource;";
		$names = array();
        $rs = $this->select($sql);
		foreach ($rs as $a) {
			array_push($names, $a['name']);
		}
		return($names);
		
    }
    public function getItemNames() {
        $sql = "select name from V3_item;";
		$names = array();
        $rs = $this->select($sql);
		foreach ($rs as $a) {
			array_push($names, $a['name']);
		}
		return($names);
		
    }
	
	
    public function getCols($table) {
        $sql = <<<EOX
                SELECT `COLUMN_NAME` 
                FROM `INFORMATION_SCHEMA`.`COLUMNS` 
                WHERE `TABLE_SCHEMA`='clarity' 
                AND `TABLE_NAME`='${table}';
EOX;
        return($this->select($sql));
    }

    public function selectColumn($sql) {
        $r;
        try {
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $r = $stmt->fetchColumn(); //   ->fetchAll($this->query_method);
        } catch (PDOException $e) {
            var_dump($sql);
            var_dump($e);
        }
        return($r);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function getColMaxLen($tname, $cname) {
        $r = null;
        $sql = "select max(length(`${cname}`)) from ${tname} as len";
        $r = $this->selectColumn($sql);

        return( ($r < strlen($cname) ? strlen($cname) : $r) );
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    private function drawline($l) {
        $line = "";
        for ($i = 0; $i < $l; $i++) {
            $line .= "-";
        }
        return($line);
    }

    /*     * *******************************************************
     * /usr/local/src/tv_db/unlink.sh /var/lib/mysql/clarity/V3_area.csv
     * ******************************************************* */

    public function getTables($pre) {

        echo "Entering getTables($pre)\n";
        $out = "";
        $r = null;
        try {
//              $stmt = $this->pdo->prepare("SELECT TABLE_NAME as Tables_in_clarity FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'clarity' and TABLE_NAME = 'V3_entity'");
            $stmt = $this->pdo->prepare("SELECT TABLE_NAME as Tables_in_clarity FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'clarity' and TABLE_NAME like 'V3_%'");
            $stmt->execute();
            $r = $stmt->fetchAll($this->query_method);
        } catch (PDOException $e) {
            var_dump($e);
            exit;
        }
        $o = array();
        


        foreach ($r as $tbl => $name) {
            $n = $name['Tables_in_clarity'];
            $p = strstr($n, $pre);
            if ($p) {
                array_push($o, $n);
            }
        }

        foreach ($o as $table) {
//            unlink("/var/lib/mysql/clarity/".$table.".csv");

			$cmd = "sudo /usr/local/src/tv_db/unlink.sh /var/lib/mysql/clarity/${table}.csv";
			echo "[ ${cmd} ]";
			echo "";
		echo `$cmd`;


//            var_export($o);
            $this->tcols[$table] = array();
            $mask = "";
            $cnameAry = array();
            $cols = $this->getCols($table);

            
            /* make the mask */

            foreach ($cols as $c) {
                $cname = $c['COLUMN_NAME'];
                $cl = $this->getColMaxLen($table, $cname);
                $mask .= "| %${cl}s ";
                array_push($cnameAry, $cname);
            }
            array_push($this->tcols[$table], $cnameAry);

            var_export($table);

            $this->export($table);

            /* make the header */

            $header = vsprintf($mask, $cnameAry) . "|\n";

            /* make the data */

            $cdataAry = array();
            $td = $this->getAllData($table);

            $rows = array();

            foreach ($td as $entry) {
                foreach ($entry as $cname => $cdata) {
                    array_push($cdataAry, $cdata);
                }
                array_push($rows, $cdataAry);
                $cdataAry = array();
            }
            //          var_export($rows);

            /* print the header */

            $out .= R("[" . strtoupper($table) . "]\n");
            $out .= $this->drawline(strlen($header)) . "\n";
            $out .= G("$header");
            $out .= $this->drawline(strlen($header)) . "\n";

            /* print the data */

            foreach ($rows as $cd) {
//                  var_dump($row);
                //              foreach ($row as $cd) {
                //            var_dump($cd);
                $out .= B(vsprintf($mask, $cd)) . "|\n";
                //          }
            }
            $out .= $this->drawline(strlen($header)) . "\n";

            $out .= ("\n\n\n");
        }
//          print_r($r);
        return($out);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function close() {
        $dbh = null;
    }

    public function debug($s, $title = null) {
        $r = "\n";
        $r .= "[$title]\n$s\n";
        print ">>> SQL >>>\n";
        print R($r,getMode());
        print "<<< SQL <<<\n";
        return;
    }

    /*     * ********************************* */
    /*                                    */
    /*     * ********************************* */

    public function export($table) {
//		print_r($this->tcols);
//print "Entering EXPORT($table) 1\n";
        
        $cstr = "";
        $cstr2 = "";
        $priCname = $this->tcols[$table][0];
        $altCname = $priCname;

//print "\n------------------------------------------------------------\n";		
//print_r($priCname);
//print "\n------------------------------------------------------------\n";		

        for ($i = 0; $i < count($priCname); $i++) {
            $priCname[$i] = $table . "." . $priCname[$i];
            $altCname[$i] = $table . "." . $altCname[$i];
        }
        /* add quites around each word */
        for ($i = 0; $i < count($priCname); $i++) {
            $priCname[$i] = "'" . $priCname[$i] . "'";
        }
        /* add comma to end of all but lasty word */
        for ($i = 0; $i < count($priCname) - 1; $i++) {
            $priCname[$i] = $priCname[$i] . ",";
            $altCname[$i] = $altCname[$i] . ",";
        }
//print "\n------------------------------------------------------------\n";		
//print_r($priCname);
//print "\n------------------------------------------------------------\n";		

        foreach ($priCname as $cname) {
            $cstr .= $cname;
        }
        foreach ($altCname as $cname) {
            $cstr2 .= $cname;
        }

        $cstr = "SELECT ${cstr} UNION ALL SELECT ${cstr2} ";
//print "\n------------------------------------------------------------\n";		
//print_r($cstr);
//print "\n------------------------------------------------------------\n";		
//exit;
        $status = "";
        $t = time();

#        unlink("/var/lib/mysql/clarity/".$table.".csv");

		$cmd = "sudo /usr/local/src/tv_db/unlink.sh /var/lib/mysql/clarity/${table}.csv";
			echo "[ ${cmd} ]";
		echo "";
		echo `$cmd`;



		
		
		
        $sql = <<<EOX
            ${cstr}  
            INTO OUTFILE '${table}.csv'
            COLUMNS TERMINATED BY ','
            ENCLOSED BY '"'
            LINES TERMINATED BY '\\n'
            from ${table};
	
EOX;

        $r = $this->update($sql, "export to csv");

//		file_put_contents("tmp.sql",$sql);
//		$cmd = "mysql -uroot -p1q2w3e clarity -e '\! mv /var/lib/mysql/truevalue/${table}.csv /tmp'";
///		`$cmd`;

        $status .= "EXPORTED -> ${table}.csv\n";
        return($status);
    }

    /*     * *******************************************************
     * 
     * ******************************************************* */

    public function update_avg_units($item, $resource,$year) {
        $status = "";
        $sql1 = <<<EOX
                CREATE TABLE tmp AS (
                    SELECT
                        AVG(V3_item_resource_stats.con_kg) AS cmean,
                        STD(V3_item_resource_stats.con_kg) AS cstd,
                        V3_item_resource_stats.item,
                        V3_item_resource_stats.resource,
                        V3_item_resource_stats.`year`
                    FROM
                        V3_item_resource_stats
                    WHERE
                        V3_item_resource_stats.item = '${item}' AND
                        V3_item_resource_stats.resource = '${resource}' AND
                        V3_item_resource_stats.`year` = '${year}'
                    GROUP BY
                        V3_item_resource_stats.item,
                        V3_item_resource_stats.resource

                )

                            
EOX;
        // "res_kg_gdp" = units, not specifically kg.  this has to be fixed, but not sure how yet
        $sql2 = <<<EOX
                UPDATE V3_item_resource as R, tmp as T 
                    SET 
                        R.mean_con_kg = T.cmean,
                        R.std_con_kg = T.cstd
                    WHERE
                        T.item = R.item AND
                        T.resource = R.resource AND
                        T.`year` = R.`year`;
EOX;

        $r = $this->delTable("tmp");
        $r = $this->update($sql1, "collect averages");
        $r = $this->update($sql2, "update_avg_units");
        $this->test("select mean_con_kg from V3_item_resource");

        $status .= "UPDATED [avg]  [V3_item_resource]\n";

        return($status);
    }
 
	public function update_avg_d_kg() {
        $status = "";
        $sql1 = <<<EOX
                CREATE TABLE tmp AS (
                    SELECT
                        AVG(V3_item_resource_stats.c_d_kg) AS dkg,
                        V3_item_resource_stats.item
                    FROM
                        V3_item_resource_stats
                    GROUP BY
                        V3_item_resource_stats.item

                )

                            
EOX;
        // "res_kg_gdp" = units, not specifically kg.  this has to be fixed, but not sure how yet
        $sql2 = <<<EOX
                UPDATE V3_entity_item as R, tmp as T 
                    SET 
                        R.c_d_kg = T.dkg
                    WHERE
                        T.item = R.item 
EOX;

        $r = $this->delTable("tmp");
        $r = $this->update($sql1, "collect averages");
        $r = $this->update($sql2, "update_c_d_kg");
//        $this->test("select mean_con_kg from V3_item_resource");

        $status .= "UPDATED [avg]  [V3_entiyy_items]\n";

        return($status);
    }

	public function update_con_d_kg() {
        $status = "";
        $sql1 = <<<EOX
                CREATE TABLE tmp AS (
					SELECT distinct
					V3_item_resource_stats.con_kg,
					V3_entity_item.c_d_kg,
					V3_entity_item.item,
					V3_item_resource_stats.resource,
					V3_item_resource_stats.src,
					V3_item_resource_stats.con_kg * V3_entity_item.c_d_kg as con_d_kg
					FROM
					V3_entity_item
					INNER JOIN V3_item_resource_stats ON V3_entity_item.item = V3_item_resource_stats.item
					WHERE
					V3_item_resource_stats.resource = '_NC'

                )

                            
EOX;
        $sql2 = <<<EOX
			UPDATE V3_item_resource_stats AS v,
			 tmp AS t
			SET v.con_d_kg = t.con_d_kg
			WHERE
				v.item = t.item
			AND v.resource = t.resource
			AND v.src = t.src
EOX;

        $r = $this->delTable("tmp");
        $r = $this->update($sql1, "collect averages");
        $r = $this->update($sql2, "update_con_d_kg");
//        $this->test("select mean_con_kg from V3_item_resource");

        $status .= "UPDATED [avg]  [V3_items_resource_stats]\n";

        return($status);
    }
	
	public function update_tot_diets() {
        $status = "";
        $sql1 = <<<EOX

			update  V3_tot_diets 
			set `src_1` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-1'
			),

			 `src_2` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-2'
			),

			 `src_3` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-3'
			),

			 `src_4` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-4'
			),

			 `src_5` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-5'
			),

			 `src_6` = (
			SELECT
			sum(V3_item_resource_stats.con_d_kg)
			FROM
			V3_item_resource_stats
			WHERE
			V3_item_resource_stats.resource = '_NC' AND
			V3_item_resource_stats.src = 'src-6'
			)
EOX;
        $r = $this->update($sql1, "update V3_tot_diets");
        $status .= "UPDATED [src_[1-6]]  [V3_tot_diets]\n";

		$sql = "update V3_tot_diets set tot = src_1+src_2+src_3+src_4+src_5+src_6;";
		$r = $this->update($sql, "update V3_tot_diets::tot");
		
		$sql = "update V3_tot_diets set tot = NULL, src_1 = NULL, src_2 = NULL, src_3 = NULL, src_4 = NULL, src_5 = NULL, src_6 = NULL where entity='ECOCHE'";
		$r = $this->update($sql, "fix update error");
		
        $status .= "UPDATED [tot]  [V3_tot_diets]\n";

		return($status);
    }


}
