/* 커뮤니티 */
CREATE TABLE BOARD (
	bd_code NUMBER(3) NOT NULL, /* 게시글코드 */
	bd_num NUMBER(3) NOT NULL, /* 게시글번호 */
	m_id VARCHAR2(30), /* 회원아이디 */
	subject VARCHAR2(100), /* 제목 */
	content VARCHAR2(4000), /* 내용 */
	category NUMBER(3), /* 카테고리 */
	read_count NUMBER, /* 조회수 */
	reg_date DATE, /* 등록일 */
	tags VARCHAR2(300), /* 태그 */
	is_adopted NUMBER(1), /* 채택여부 */
	file_name VARCHAR2(255), /* 첨부파일명 */
	ref NUMBER, /* 답변간그룹 */
	re_step NUMBER, /* 그룹내순서 */
	re_level NUMBER /* 그룹내레벨 */
);

CREATE UNIQUE INDEX PK_BOARD2
	ON BOARD (
		bd_code ASC,
		bd_num ASC
	);

ALTER TABLE BOARD
	ADD
		CONSTRAINT PK_BOARD2
		PRIMARY KEY (
			bd_code,
			bd_num
		);

COMMENT ON TABLE BOARD IS '커뮤니티';

COMMENT ON COLUMN BOARD.bd_code IS '게시글코드';

COMMENT ON COLUMN BOARD.bd_num IS '게시글번호';

COMMENT ON COLUMN BOARD.m_id IS '회원아이디';

COMMENT ON COLUMN BOARD.subject IS '제목';

COMMENT ON COLUMN BOARD.content IS '내용';

COMMENT ON COLUMN BOARD.category IS '카테고리';

COMMENT ON COLUMN BOARD.read_count IS '조회수';

COMMENT ON COLUMN BOARD.reg_date IS '등록일';

COMMENT ON COLUMN BOARD.tags IS '태그';

COMMENT ON COLUMN BOARD.is_adopted IS '채택여부';

COMMENT ON COLUMN BOARD.file_name IS '첨부파일명';

COMMENT ON COLUMN BOARD.ref IS '답변간그룹';

COMMENT ON COLUMN BOARD.re_step IS '그룹내순서';

COMMENT ON COLUMN BOARD.re_level IS '그룹내레벨';

/* 댓글 */
CREATE TABLE COMMENTS (
	bd_code NUMBER(3) NOT NULL, /* 게시글코드 */
	bd_num NUMBER(3) NOT NULL, /* 게시글번호 */
	bd_cm_num NUMBER(3) NOT NULL, /* 댓글번호 */
	content VARCHAR2(4000), /* 내용 */
	reg_date DATE, /* 등록일 */
	ref NUMBER, /* 답변간그룹 */
	re_step NUMBER, /* 그룹내순서 */
	re_level NUMBER /* 그룹내레벨 */
);

CREATE UNIQUE INDEX PK_COMMENTS
	ON COMMENTS (
		bd_code ASC,
		bd_num ASC,
		bd_cm_num ASC
	);

ALTER TABLE COMMENTS
	ADD
		CONSTRAINT PK_COMMENTS
		PRIMARY KEY (
			bd_code,
			bd_num,
			bd_cm_num
		);

COMMENT ON TABLE COMMENTS IS '댓글';

COMMENT ON COLUMN COMMENTS.bd_code IS '게시글코드';

COMMENT ON COLUMN COMMENTS.bd_num IS '게시글번호';

COMMENT ON COLUMN COMMENTS.bd_cm_num IS '댓글번호';

COMMENT ON COLUMN COMMENTS.content IS '내용';

COMMENT ON COLUMN COMMENTS.reg_date IS '등록일';

COMMENT ON COLUMN COMMENTS.ref IS '답변간그룹';

COMMENT ON COLUMN COMMENTS.re_step IS '그룹내순서';

COMMENT ON COLUMN COMMENTS.re_level IS '그룹내레벨';

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
			bd_code,
			bd_num
		)
		REFERENCES BOARD (
			bd_code,
			bd_num
		);

