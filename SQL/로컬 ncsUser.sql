CREATE USER ncsUser IDENTIFIED BY ncsUser;

GRANT CONNECT, RESOURCE, DBA to ncsUser;

CREATE TABLE MEMBER(
    MEMBER_ID VARCHAR2(30) PRIMARY KEY,
    MEMBER_PWD VARCHAR2(100) NOT NULL,
    MEMBER_NM VARCHAR2(15) NOT NULL,
    MEMBER_ENROLL_DT DATE DEFAULT SYSDATE
);

INSERT INTO MEMBER VALUES('user1', 'pass1', 'ȫ�浿', DEFAULT);
INSERT INTO MEMBER VALUES('user2', 'pass2', '���浿', DEFAULT);
