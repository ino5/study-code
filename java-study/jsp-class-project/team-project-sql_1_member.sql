/* 회원 */
CREATE TABLE MEMBER (
	m_id VARCHAR2(30) NOT NULL, /* 회원아이디 */
	m_pass VARCHAR2(30) NOT NULL, /* 비밀번호 */
	m_birth VARCHAR2(30) NOT NULL, /* 생년월일 */
	m_name VARCHAR2(10) NOT NULL, /* 이름 */
	m_addr VARCHAR2(200) NOT NULL, /* 주소 */
	m_gender VARCHAR2(1) NOT NULL, /* 성별 */
	m_email VARCHAR2(30) NOT NULL, /* 이메일 */
	m_phone VARCHAR2(20) NOT NULL, /* 전화번호 */
	m_pic VARCHAR2(4000) /* 사진 */
);

CREATE UNIQUE INDEX PK_MEMBER
	ON MEMBER (
		m_id ASC
	);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			m_id
		);

COMMENT ON TABLE MEMBER IS '회원';

COMMENT ON COLUMN MEMBER.m_id IS '회원아이디';

COMMENT ON COLUMN MEMBER.m_pass IS '비밀번호';

COMMENT ON COLUMN MEMBER.m_birth IS '생년월일';

COMMENT ON COLUMN MEMBER.m_name IS '이름';

COMMENT ON COLUMN MEMBER.m_addr IS '주소';

COMMENT ON COLUMN MEMBER.m_gender IS '성별';

COMMENT ON COLUMN MEMBER.m_email IS '이메일';

COMMENT ON COLUMN MEMBER.m_phone IS '전화번호';

COMMENT ON COLUMN MEMBER.m_pic IS '사진';

