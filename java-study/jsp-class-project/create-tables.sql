/* 커뮤니티 */
CREATE TABLE BOARD (
	BOARD_CODE NUMBER(3) NOT NULL, /* 게시글코드 */
	BOARD_NUM NUMBER(3) NOT NULL, /* 게시글번호 */
	m_id VARCHAR2(30), /* 회원아이디 */
	SUBJECT VARCHAR2(100), /* 제목 */
	CONTENT VARCHAR2(4000), /* 내용 */
	CATEGORY NUMBER(3), /* 카테고리 */
	READ_COUNT NUMBER, /* 조회수 */
	REG_DATE DATE, /* 등록일 */
	TAGS VARCHAR2(300), /* 태그 */
	IS_ADOPTED NUMBER(1), /* 채택여부 */
	FILE_NAME VARCHAR2(255), /* 첨부파일명 */
	REF NUMBER, /* 답변간그룹 */
	RE_STEP NUMBER, /* 그룹내순서 */
	RE_LEVEL NUMBER /* 그룹내레벨 */
);

CREATE UNIQUE INDEX PK_BOARD2
	ON BOARD (
		BOARD_CODE ASC,
		BOARD_NUM ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD2
		PRIMARY KEY (
			BOARD_CODE,
			BOARD_NUM
		);

COMMENT ON TABLE BOARD IS '커뮤니티';

COMMENT ON COLUMN BOARD.BOARD_CODE IS '게시글코드';

COMMENT ON COLUMN BOARD.BOARD_NUM IS '게시글번호';

COMMENT ON COLUMN BOARD.m_id IS '회원아이디';

COMMENT ON COLUMN BOARD.SUBJECT IS '제목';

COMMENT ON COLUMN BOARD.CONTENT IS '내용';

COMMENT ON COLUMN BOARD.CATEGORY IS '카테고리';

COMMENT ON COLUMN BOARD.READ_COUNT IS '조회수';

COMMENT ON COLUMN BOARD.REG_DATE IS '등록일';

COMMENT ON COLUMN BOARD.TAGS IS '태그';

COMMENT ON COLUMN BOARD.IS_ADOPTED IS '채택여부';

COMMENT ON COLUMN BOARD.FILE_NAME IS '첨부파일명';

COMMENT ON COLUMN BOARD.REF IS '답변간그룹';

COMMENT ON COLUMN BOARD.RE_STEP IS '그룹내순서';

COMMENT ON COLUMN BOARD.RE_LEVEL IS '그룹내레벨';

/* COMMENTS */
CREATE TABLE COMMENTS (
	BOARD_CODE NUMBER(3) NOT NULL, /* 게시글코드 */
	BOARD_NUM NUMBER(3) NOT NULL, /* 게시글번호 */
	COMMENT_NUM NUMBER(3) NOT NULL, /* 댓글번호 */
	CONTENT VARCHAR2(4000), /* 내용 */
	REG_DATE DATE, /* 등록일 */
	REF NUMBER, /* 답변간그룹 */
	RE_STEP NUMBER, /* 그룹내순서 */
	RE_LEVEL NUMBER /* 그룹내레벨 */
);

CREATE UNIQUE INDEX PK_COMMENTS
	ON COMMENTS (
		BOARD_CODE ASC,
		BOARD_NUM ASC,
		COMMENT_NUM ASC
	);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT PK_COMMENTS
		PRIMARY KEY (
			BOARD_CODE,
			BOARD_NUM,
			COMMENT_NUM
		);

COMMENT ON TABLE COMMENTS IS 'COMMENTS';

COMMENT ON COLUMN COMMENTS.BOARD_CODE IS '게시글코드';

COMMENT ON COLUMN COMMENTS.BOARD_NUM IS '게시글번호';

COMMENT ON COLUMN COMMENTS.COMMENT_NUM IS '댓글번호';

COMMENT ON COLUMN COMMENTS.CONTENT IS '내용';

COMMENT ON COLUMN COMMENTS.REG_DATE IS '등록일';

COMMENT ON COLUMN COMMENTS.REF IS '답변간그룹';

COMMENT ON COLUMN COMMENTS.RE_STEP IS '그룹내순서';

COMMENT ON COLUMN COMMENTS.RE_LEVEL IS '그룹내레벨';

ALTER TABLE BOARD
	ADD
		CONSTRAINT FK_MEMBER_TO_BOARD
		FOREIGN KEY (
			m_id
		)
		REFERENCES MEMBER (
			m_id
		);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT FK_BOARD_TO_COMMENTS
		FOREIGN KEY (
			BOARD_CODE,
			BOARD_NUM
		)
		REFERENCES BOARD (
			BOARD_CODE,
			BOARD_NUM
		);
