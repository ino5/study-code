/*CREATE USER*/
CONN system/1234;
CREATE USER jsp IDENTIFIED BY 1234;
GRANT DBA TO jsp;
--DROP USER jsp cascade;

/*frequently used*/

/*etc*/
CONN jsp/1234;
SELECT * FROM tabs;
CREATE TABLE test (
  COL1 NUMBER PRIMARY KEY,
  COL2 VARCHAR2(10)
);
INSERT INTO test VALUES(4,'hh');
SELECT col1, col2 from test;
commit;

select * from user_constraints;
--DROP TABLE member CASCADE CONSTRAINTS;
CREATE TABLE member (
  m_id varchar2(30) PRIMARY KEY,
  m_pass varchar2(30),
  m_name varchar2(10)
);
INSERT INTO member(m_id, m_pass, m_name) values('admin', '501', 'jack');
SELECT * FROM member WHERE m_id = 'admin' and m_pass = '501';
commit;
