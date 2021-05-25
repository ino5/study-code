--CREATE USER
CONN system/1234;
CREATE USER jsp IDENTIFIED BY 1234;
GRANT DBA TO jsp;

--etc
conn jsp/1234;
select * from tabs;

