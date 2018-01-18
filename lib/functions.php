<?php

$ANSI_CODES = array(
    "off" => 0,
    "bold" => 1,
    "italic" => 3,
    "underline" => 4,
    "blink" => 5,
    "inverse" => 7,
    "hidden" => 8,
    "black" => 30,
    "red" => 31,
    "green" => 32,
    "yellow" => 33,
    "blue" => 34,
    "magenta" => 35,
    "cyan" => 36,
    "white" => 37,
    "black_bg" => 40,
    "red_bg" => 41,
    "green_bg" => 42,
    "yellow_bg" => 43,
    "blue_bg" => 44,
    "magenta_bg" => 45,
    "cyan_bg" => 46,
    "white_bg" => 47
);

/* * ********************************************************
 * 
 * ******************************************************* */

function set($str, $color) {
    GLOBAL $ANSI_CODES;
    $color_attrs = explode("+", $color);
    $ansi_str = "";
    foreach ($color_attrs as $attr) {
        $ansi_str .= "\033[" . $ANSI_CODES[$attr] . "m";
    }
    
    $code = $ANSI_CODES["off"];
    
    $x = "\033[" . $code . "m";

    $ansi_str .= $str . $x;
    return $ansi_str;
}

function elog($message, $color) {
    error_log(set($message, $color));
}

function R($message) {
    $color = "red+bold";
    return(set($message, $color));
}

function G($message) {
    $color = "green+bold";
    return(set($message, $color));
}

function B($message) {
    $color = "blue+bold";
    return(set($message, $color));
}

function C($message) {
    $color = "cyan+bold";
    return(set($message, $color));
}

function M($message) {
    $color = "magenta+bold";
    return(set($message, $color));
}

function Y($message) {
    $color = "yellow+bold";
    return(set($message, $color));
}

function replace($full_text, $search_regexp, $color) {
    $new_text = preg_replace_callback(
            "/($search_regexp)/", function ($matches) use ($color) {
        return Color::set($matches[1], $color);
    }, $full_text
    );
    return is_null($new_text) ? $full_text : $new_text;
}

function step($s=null,$label=null) {
    GLOBAL $step;
    print Y("-------------------------------------------------------------\n");
    if ( ($step == 1) || ($s==1) ){
        $line = readline("ENTER to run: $label");
    }
    print Y("-------------------------------------------------------------\n");
}