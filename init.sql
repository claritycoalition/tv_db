-- create user 'root'@'localhost' identified by '1q2w3e';
delete user 'root'@'localhost';
grant all on clarity.* to 'root'@'localhost';
FLUSH PRIVILEGES;
