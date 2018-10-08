ALTER TABLE EMP
	DROP
		CONSTRAINT FK_DPT_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_PST_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_PMS_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_RNK_TO_EMP
		CASCADE;

ALTER TABLE SCD
	DROP
		CONSTRAINT FK_EMP_TO_SCD
		CASCADE;

ALTER TABLE SCD
	DROP
		CONSTRAINT FK_DPT_TO_SCD
		CASCADE;

ALTER TABLE BRD
	DROP
		CONSTRAINT FK_BRD_DIV_TO_BRD
		CASCADE;

ALTER TABLE BRD
	DROP
		CONSTRAINT FK_EMP_TO_BRD
		CASCADE;

ALTER TABLE ADDR
	DROP
		CONSTRAINT FK_ADDR_GRP_TO_ADDR
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_IPT_TO_ML
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_STT_TO_ML
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_GRP_TO_ML
		CASCADE;

ALTER TABLE CMT
	DROP
		CONSTRAINT FK_EMP_TO_CMT
		CASCADE;

ALTER TABLE EMP_PIC
	DROP
		CONSTRAINT FK_EMP_TO_EMP_PIC
		CASCADE;

ALTER TABLE ADDR_GRP
	DROP
		CONSTRAINT FK_EMP_TO_ADDR_GRP
		CASCADE;

ALTER TABLE ML_GRP
	DROP
		CONSTRAINT FK_EMP_TO_ML_GRP
		CASCADE;

ALTER TABLE RPL
	DROP
		CONSTRAINT FK_BRD_TO_RPL
		CASCADE;

ALTER TABLE APV_FORM
	DROP
		CONSTRAINT FK_APV_FORM_DIV_TO_APV_FORM
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_APV_FORM_TO_APV
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_EMP_TO_APV
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_APV_OK_TO_APV
		CASCADE;

ALTER TABLE EMP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PMS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DPT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE RNK
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SCD
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BRD
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ADDR
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE CMT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_OK
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE EMP_PIC
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PST
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ADDR_GRP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_STT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_GRP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_IPT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BRD_DIV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE RPL
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_FORM_DIV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_FORM
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* 사원 */
DROP TABLE EMP 
	CASCADE CONSTRAINTS;

/* 권한 */
DROP TABLE PMS 
	CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE DPT 
	CASCADE CONSTRAINTS;

/* 직위 */
DROP TABLE RNK 
	CASCADE CONSTRAINTS;

/* 일정 */
DROP TABLE SCD 
	CASCADE CONSTRAINTS;

/* 게시판 */
DROP TABLE BRD 
	CASCADE CONSTRAINTS;

/* 주소록 */
DROP TABLE ADDR 
	CASCADE CONSTRAINTS;

/* 메일함 */
DROP TABLE ML 
	CASCADE CONSTRAINTS;

/* 출퇴근 */
DROP TABLE CMT 
	CASCADE CONSTRAINTS;

/* 결재승인 */
DROP TABLE APV_OK 
	CASCADE CONSTRAINTS;

/* 기본정보사진 */
DROP TABLE EMP_PIC 
	CASCADE CONSTRAINTS;

/* 직책 */
DROP TABLE PST 
	CASCADE CONSTRAINTS;

/* 주소록그룹 */
DROP TABLE ADDR_GRP 
	CASCADE CONSTRAINTS;

/* 메일상태 */
DROP TABLE ML_STT 
	CASCADE CONSTRAINTS;

/* 메일그룹 */
DROP TABLE ML_GRP 
	CASCADE CONSTRAINTS;

/* 메일중요도 */
DROP TABLE ML_IPT 
	CASCADE CONSTRAINTS;

/* 게시판구분 */
DROP TABLE BRD_DIV 
	CASCADE CONSTRAINTS;

/* 리플 */
DROP TABLE RPL 
	CASCADE CONSTRAINTS;

/* 결재양식분류 */
DROP TABLE APV_FORM_DIV 
	CASCADE CONSTRAINTS;

/* 결재양식 */
DROP TABLE APV_FORM 
	CASCADE CONSTRAINTS;

/* 전자결재 */
DROP TABLE APV 
	CASCADE CONSTRAINTS;

/* 사원 */
CREATE TABLE EMP (
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	PMS_SQ NUMBER, /* 권한번호 */
	DPT_SQ NUMBER, /* 부서번호 */
	RNK_SQ NUMBER, /* 직위번호 */
	PST_SQ NUMBER, /* 직책번호 */
	EMP_NM VARCHAR2(100), /* 이름 */
	EMP_ID VARCHAR2(100), /* 아이디 */
	EMP_PW VARCHAR2(100), /* 비밀번호 */
	EMP_SEX VARCHAR2(10), /* 성별 */
	EMP_BDATE VARCHAR2(100), /* 생년월일 */
	EMP_ML_ID VARCHAR2(100), /* 이메일아이디 */
	EMP_ML_ADDR VARCHAR2(100), /* 이메일주소 */
	EMP_TEL1 VARCHAR2(10), /* 휴대전화번호1 */
	EMP_TEL2 VARCHAR2(10), /* 휴대전화번호2 */
	EMP_TEL3 VARCHAR2(10), /* 휴대전화번호3 */
	EMP_ZIP VARCHAR2(10), /* 우편번호 */
	EMP_ADDR VARCHAR2(500), /* 기본주소 */
	EMP_ADDR_DT VARCHAR2(500), /* 상세주소 */
	EMP_BS_TEL1 VARCHAR2(10), /* 회사전화번호1 */
	EMP_BS_TEL2 VARCHAR2(10), /* 회사전화번호2 */
	EMP_BS_TEL3 VARCHAR2(10), /* 회사전화번호3 */
	EMP_REG DATE, /* 입사일 */
	EMP_MOD DATE, /* 퇴사일 */
	EMP_FNL_MOD DATE /* 최종수정일 */
);

COMMENT ON TABLE EMP IS '사원';

COMMENT ON COLUMN EMP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN EMP.PMS_SQ IS '권한번호';

COMMENT ON COLUMN EMP.DPT_SQ IS '부서번호';

COMMENT ON COLUMN EMP.RNK_SQ IS '직위번호';

COMMENT ON COLUMN EMP.PST_SQ IS '직책번호';

COMMENT ON COLUMN EMP.EMP_NM IS '이름';

COMMENT ON COLUMN EMP.EMP_ID IS '아이디';

COMMENT ON COLUMN EMP.EMP_PW IS '비밀번호';

COMMENT ON COLUMN EMP.EMP_SEX IS '성별';

COMMENT ON COLUMN EMP.EMP_BDATE IS '생년월일';

COMMENT ON COLUMN EMP.EMP_ML_ID IS '이메일아이디';

COMMENT ON COLUMN EMP.EMP_ML_ADDR IS '이메일주소';

COMMENT ON COLUMN EMP.EMP_TEL1 IS '휴대전화번호1';

COMMENT ON COLUMN EMP.EMP_TEL2 IS '휴대전화번호2';

COMMENT ON COLUMN EMP.EMP_TEL3 IS '휴대전화번호3';

COMMENT ON COLUMN EMP.EMP_ZIP IS '우편번호';

COMMENT ON COLUMN EMP.EMP_ADDR IS '기본주소';

COMMENT ON COLUMN EMP.EMP_ADDR_DT IS '상세주소';

COMMENT ON COLUMN EMP.EMP_BS_TEL1 IS '회사전화번호1';

COMMENT ON COLUMN EMP.EMP_BS_TEL2 IS '회사전화번호2';

COMMENT ON COLUMN EMP.EMP_BS_TEL3 IS '회사전화번호3';

COMMENT ON COLUMN EMP.EMP_REG IS '입사일';

COMMENT ON COLUMN EMP.EMP_MOD IS '퇴사일';

COMMENT ON COLUMN EMP.EMP_FNL_MOD IS '최종수정일';

ALTER TABLE EMP
	ADD
		CONSTRAINT PK_EMP
		PRIMARY KEY (
			EMP_SQ
		);

/* 권한 */
CREATE TABLE PMS (
	PMS_SQ NUMBER NOT NULL, /* 권한번호 */
	PMS_NM VARCHAR2(100) /* 권한이름 */
);

COMMENT ON TABLE PMS IS '권한';

COMMENT ON COLUMN PMS.PMS_SQ IS '권한번호';

COMMENT ON COLUMN PMS.PMS_NM IS '권한이름';

ALTER TABLE PMS
	ADD
		CONSTRAINT PK_PMS
		PRIMARY KEY (
			PMS_SQ
		);

/* 부서 */
CREATE TABLE DPT (
	DPT_SQ NUMBER NOT NULL, /* 부서번호 */
	DPT_NM VARCHAR2(100) /* 부서이름 */
);

COMMENT ON TABLE DPT IS '부서';

COMMENT ON COLUMN DPT.DPT_SQ IS '부서번호';

COMMENT ON COLUMN DPT.DPT_NM IS '부서이름';

ALTER TABLE DPT
	ADD
		CONSTRAINT PK_DPT
		PRIMARY KEY (
			DPT_SQ
		);

/* 직위 */
CREATE TABLE RNK (
	RNK_SQ NUMBER NOT NULL, /* 직위번호 */
	RNK_NM VARCHAR2(100) /* 직위명 */
);

COMMENT ON TABLE RNK IS '직위';

COMMENT ON COLUMN RNK.RNK_SQ IS '직위번호';

COMMENT ON COLUMN RNK.RNK_NM IS '직위명';

ALTER TABLE RNK
	ADD
		CONSTRAINT PK_RNK
		PRIMARY KEY (
			RNK_SQ
		);

/* 일정 */
CREATE TABLE SCD (
	SCD_SQ NUMBER NOT NULL, /* 일정번호 */
	EMP_NO VARCHAR2(100), /* 사원번호 */
	DPT_SQ NUMBER, /* 부서번호 */
	SCD_NM VARCHAR2(100), /* 이름 */
	SCD_PST VARCHAR2(300), /* 위치 */
	SCD_RPT VARCHAR2(10), /* 반복여부 */
	SCD_SDAY VARCHAR2(50), /* 시작날짜 */
	SCD_STIME VARCHAR2(50), /* 시작시간 */
	SCD_EDAY VARCHAR2(50), /* 종료날짜 */
	SCD_ETIME VARCHAR2(50), /* 종료시간 */
	SCD_SMR VARCHAR2(200), /* 요약 */
	SCD_DCT VARCHAR2(4000) /* 설명 */
);

COMMENT ON TABLE SCD IS '일정';

COMMENT ON COLUMN SCD.SCD_SQ IS '일정번호';

COMMENT ON COLUMN SCD.EMP_NO IS '사원번호';

COMMENT ON COLUMN SCD.DPT_SQ IS '부서번호';

COMMENT ON COLUMN SCD.SCD_NM IS '이름';

COMMENT ON COLUMN SCD.SCD_PST IS '위치';

COMMENT ON COLUMN SCD.SCD_RPT IS '반복여부';

COMMENT ON COLUMN SCD.SCD_SDAY IS '시작날짜';

COMMENT ON COLUMN SCD.SCD_STIME IS '시작시간';

COMMENT ON COLUMN SCD.SCD_EDAY IS '종료날짜';

COMMENT ON COLUMN SCD.SCD_ETIME IS '종료시간';

COMMENT ON COLUMN SCD.SCD_SMR IS '요약';

COMMENT ON COLUMN SCD.SCD_DCT IS '설명';

ALTER TABLE SCD
	ADD
		CONSTRAINT PK_SCD
		PRIMARY KEY (
			SCD_SQ
		);

/* 게시판 */
CREATE TABLE BRD (
	BRD_SQ NUMBER NOT NULL, /* 게시글번호 */
	BRD_DIV_SQ NUMBER, /* 게시판구분번호 */
	BRD_TTL VARCHAR2(200), /* 제목 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	BRD_CTT CLOB, /* 내용 */
	BRD_DT VARCHAR2(100), /* 작성일자 */
	BRD_HITS NUMBER, /* 조회수 */
	BRD_FL_ONM VARCHAR2(500), /* 원본파일이름 */
	BRD_FL_MNM VARCHAR2(500), /* 수정파일이름 */
	BRD_FL_RT VARCHAR2(500) /* 파일경로 */
);

COMMENT ON TABLE BRD IS '게시판';

COMMENT ON COLUMN BRD.BRD_SQ IS '게시글번호';

COMMENT ON COLUMN BRD.BRD_DIV_SQ IS '게시판구분번호';

COMMENT ON COLUMN BRD.BRD_TTL IS '제목';

COMMENT ON COLUMN BRD.EMP_SQ IS '사원번호';

COMMENT ON COLUMN BRD.BRD_CTT IS '내용';

COMMENT ON COLUMN BRD.BRD_DT IS '작성일자';

COMMENT ON COLUMN BRD.BRD_HITS IS '조회수';

COMMENT ON COLUMN BRD.BRD_FL_ONM IS '원본파일이름';

COMMENT ON COLUMN BRD.BRD_FL_MNM IS '수정파일이름';

COMMENT ON COLUMN BRD.BRD_FL_RT IS '파일경로';

ALTER TABLE BRD
	ADD
		CONSTRAINT PK_BRD
		PRIMARY KEY (
			BRD_SQ
		);

/* 주소록 */
CREATE TABLE ADDR (
	ADDR_SQ NUMBER NOT NULL, /* 주소록번호 */
	ADDR_GRP_SQ NUMBER NOT NULL, /* 주소록그룹번호 */
	ADDR_NM VARCHAR2(100), /* 이름 */
	ADDR_CPN VARCHAR2(100), /* 회사 */
	ADDR_DPT VARCHAR2(100), /* 부서 */
	ADDR_RNK VARCHAR2(100), /* 직위 */
	ADDR_TEL1 VARCHAR2(10), /* 휴대전화1 */
	ADDR_TEL2 VARCHAR2(10), /* 휴대전화2 */
	ADDR_TEL3 VARCHAR2(10), /* 휴대전화3 */
	ADDR_EML_ID VARCHAR2(100), /* 이메일아이디 */
	ADDR_EML_ADDR VARCHAR2(100), /* 이메일주소 */
	ADDR_CPN_TEL1 VARCHAR2(10), /* 회사전화1 */
	ADDR_CPN_TEL2 VARCHAR2(10), /* 회사전화2 */
	ADDR_CPN_TEL3 VARCHAR2(10), /* 회사전화3 */
	ADDR_CPN_ADDR VARCHAR2(100), /* 회사주소 */
	ADDR_MM VARCHAR2(500) /* 메모 */
);

COMMENT ON TABLE ADDR IS '주소록';

COMMENT ON COLUMN ADDR.ADDR_SQ IS '주소록번호';

COMMENT ON COLUMN ADDR.ADDR_GRP_SQ IS '주소록그룹번호';

COMMENT ON COLUMN ADDR.ADDR_NM IS '이름';

COMMENT ON COLUMN ADDR.ADDR_CPN IS '회사';

COMMENT ON COLUMN ADDR.ADDR_DPT IS '부서';

COMMENT ON COLUMN ADDR.ADDR_RNK IS '직위';

COMMENT ON COLUMN ADDR.ADDR_TEL1 IS '휴대전화1';

COMMENT ON COLUMN ADDR.ADDR_TEL2 IS '휴대전화2';

COMMENT ON COLUMN ADDR.ADDR_TEL3 IS '휴대전화3';

COMMENT ON COLUMN ADDR.ADDR_EML_ID IS '이메일아이디';

COMMENT ON COLUMN ADDR.ADDR_EML_ADDR IS '이메일주소';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL1 IS '회사전화1';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL2 IS '회사전화2';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL3 IS '회사전화3';

COMMENT ON COLUMN ADDR.ADDR_CPN_ADDR IS '회사주소';

COMMENT ON COLUMN ADDR.ADDR_MM IS '메모';

ALTER TABLE ADDR
	ADD
		CONSTRAINT PK_ADDR
		PRIMARY KEY (
			ADDR_SQ
		);

/* 메일함 */
CREATE TABLE ML (
	ML_SQ NUMBER NOT NULL, /* 메일번호 */
	ML_GRP_SQ NUMBER NOT NULL, /* 메일그룹번호 */
	ML_STT_SQ NUMBER, /* 메일상태번호 */
	ML_IPT_SQ NUMBER, /* 메일중요분류번호 */
	ML_SND_ADD VARCHAR2(200), /* 발신메일주소 */
	ML_RCV_ADD VARCHAR2(200), /* 수신메일주소 */
	ML_TTL VARCHAR2(200), /* 제목 */
	ML_CTT CLOB, /* 내용 */
	ML_FL_NM VARCHAR2(500), /* 파일명 */
	ML_FL_RT VARCHAR2(500) /* 파일경로 */
);

COMMENT ON TABLE ML IS '메일함';

COMMENT ON COLUMN ML.ML_SQ IS '메일번호';

COMMENT ON COLUMN ML.ML_GRP_SQ IS '메일그룹번호';

COMMENT ON COLUMN ML.ML_STT_SQ IS '메일상태번호';

COMMENT ON COLUMN ML.ML_IPT_SQ IS '메일중요분류번호';

COMMENT ON COLUMN ML.ML_SND_ADD IS '발신메일주소';

COMMENT ON COLUMN ML.ML_RCV_ADD IS '수신메일주소';

COMMENT ON COLUMN ML.ML_TTL IS '제목';

COMMENT ON COLUMN ML.ML_CTT IS '내용';

COMMENT ON COLUMN ML.ML_FL_NM IS '파일명';

COMMENT ON COLUMN ML.ML_FL_RT IS '파일경로';

ALTER TABLE ML
	ADD
		CONSTRAINT PK_ML
		PRIMARY KEY (
			ML_SQ
		);

/* 출퇴근 */
CREATE TABLE CMT (
	CMT_SQ NUMBER NOT NULL, /* 출퇴근번호 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	CMT_IP VARCHAR2(100), /* IP */
	CMT_STR_TM DATE, /* 출근시간 */
	CMT_END_TM DATE, /* 퇴근시간 */
	CMT_MSG VARCHAR2(500) /* 메시지 */
);

COMMENT ON TABLE CMT IS '출퇴근';

COMMENT ON COLUMN CMT.CMT_SQ IS '출퇴근번호';

COMMENT ON COLUMN CMT.EMP_SQ IS '사원번호';

COMMENT ON COLUMN CMT.CMT_IP IS 'IP';

COMMENT ON COLUMN CMT.CMT_STR_TM IS '출근시간';

COMMENT ON COLUMN CMT.CMT_END_TM IS '퇴근시간';

COMMENT ON COLUMN CMT.CMT_MSG IS '메시지';

ALTER TABLE CMT
	ADD
		CONSTRAINT PK_CMT
		PRIMARY KEY (
			CMT_SQ
		);

/* 결재승인 */
CREATE TABLE APV_OK (
	APV_OK_SQ NUMBER NOT NULL, /* 결재승인번호 */
	APV_OK_NM VARCHAR2(100) /* 결재승인명 */
);

COMMENT ON TABLE APV_OK IS '결재승인';

COMMENT ON COLUMN APV_OK.APV_OK_SQ IS '결재승인번호';

COMMENT ON COLUMN APV_OK.APV_OK_NM IS '결재승인명';

ALTER TABLE APV_OK
	ADD
		CONSTRAINT PK_APV_OK
		PRIMARY KEY (
			APV_OK_SQ
		);

/* 기본정보사진 */
CREATE TABLE EMP_PIC (
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	EMP_PIC_DT VARCHAR2(50), /* 최종등록일 */
	EMP_PIC_RT VARCHAR2(500), /* 경로 */
	EMP_PIC_ONM VARCHAR2(500), /* 원래이름 */
	EMP_PIC_MNM VARCHAR2(500) /* 수정된이름 */
);

COMMENT ON TABLE EMP_PIC IS '기본정보사진';

COMMENT ON COLUMN EMP_PIC.EMP_SQ IS '사원번호';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_DT IS '최종등록일';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_RT IS '경로';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_ONM IS '원래이름';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_MNM IS '수정된이름';

ALTER TABLE EMP_PIC
	ADD
		CONSTRAINT PK_EMP_PIC
		PRIMARY KEY (
			EMP_SQ
		);

/* 직책 */
CREATE TABLE PST (
	PST_SQ NUMBER NOT NULL, /* 직책번호 */
	PST_NM VARCHAR2(100) /* 직책명 */
);

COMMENT ON TABLE PST IS '직책';

COMMENT ON COLUMN PST.PST_SQ IS '직책번호';

COMMENT ON COLUMN PST.PST_NM IS '직책명';

ALTER TABLE PST
	ADD
		CONSTRAINT PK_PST
		PRIMARY KEY (
			PST_SQ
		);

/* 주소록그룹 */
CREATE TABLE ADDR_GRP (
	ADDR_GRP_SQ NUMBER NOT NULL, /* 주소록그룹번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	ADDR_GRP_NM VARCHAR2(100) /* 주소록그룹명 */
);

COMMENT ON TABLE ADDR_GRP IS '주소록그룹';

COMMENT ON COLUMN ADDR_GRP.ADDR_GRP_SQ IS '주소록그룹번호';

COMMENT ON COLUMN ADDR_GRP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN ADDR_GRP.ADDR_GRP_NM IS '주소록그룹명';

ALTER TABLE ADDR_GRP
	ADD
		CONSTRAINT PK_ADDR_GRP
		PRIMARY KEY (
			ADDR_GRP_SQ
		);

/* 메일상태 */
CREATE TABLE ML_STT (
	ML_STT_SQ NUMBER NOT NULL, /* 메일상태번호 */
	ML_STT_NM VARCHAR2(100) /* 메일상태명 */
);

COMMENT ON TABLE ML_STT IS '메일상태';

COMMENT ON COLUMN ML_STT.ML_STT_SQ IS '메일상태번호';

COMMENT ON COLUMN ML_STT.ML_STT_NM IS '메일상태명';

ALTER TABLE ML_STT
	ADD
		CONSTRAINT PK_ML_STT
		PRIMARY KEY (
			ML_STT_SQ
		);

/* 메일그룹 */
CREATE TABLE ML_GRP (
	ML_GRP_SQ NUMBER NOT NULL, /* 메일그룹번호 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	ML_GRP_NM VARCHAR2(100) /* 메일그룹명 */
);

COMMENT ON TABLE ML_GRP IS '메일그룹';

COMMENT ON COLUMN ML_GRP.ML_GRP_SQ IS '메일그룹번호';

COMMENT ON COLUMN ML_GRP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN ML_GRP.ML_GRP_NM IS '메일그룹명';

ALTER TABLE ML_GRP
	ADD
		CONSTRAINT PK_ML_GRP
		PRIMARY KEY (
			ML_GRP_SQ
		);

/* 메일중요도 */
CREATE TABLE ML_IPT (
	ML_IPT_SQ NUMBER NOT NULL, /* 메일중요분류번호 */
	ML_IPT_NM VARCHAR2(100) /* 메일중요도 */
);

COMMENT ON TABLE ML_IPT IS '메일중요도';

COMMENT ON COLUMN ML_IPT.ML_IPT_SQ IS '메일중요분류번호';

COMMENT ON COLUMN ML_IPT.ML_IPT_NM IS '메일중요도';

ALTER TABLE ML_IPT
	ADD
		CONSTRAINT PK_ML_IPT
		PRIMARY KEY (
			ML_IPT_SQ
		);

/* 게시판구분 */
CREATE TABLE BRD_DIV (
	BRD_DIV_SQ NUMBER NOT NULL, /* 게시판구분번호 */
	BRD_DIV_NM VARCHAR2(100) /* 게시판구분명 */
);

COMMENT ON TABLE BRD_DIV IS '게시판구분';

COMMENT ON COLUMN BRD_DIV.BRD_DIV_SQ IS '게시판구분번호';

COMMENT ON COLUMN BRD_DIV.BRD_DIV_NM IS '게시판구분명';

ALTER TABLE BRD_DIV
	ADD
		CONSTRAINT PK_BRD_DIV
		PRIMARY KEY (
			BRD_DIV_SQ
		);

/* 리플 */
CREATE TABLE RPL (
	RPL_SQ NUMBER NOT NULL, /* 리플번호 */
	BRD_SQ NUMBER, /* 게시글번호 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	RPL_CTT VARCHAR2(4000), /* 내용 */
	RPL_RDT VARCHAR2(100), /* 등록일 */
	RPL_LDT VARCHAR2(100) /* 최종수정일 */
);

COMMENT ON TABLE RPL IS '리플';

COMMENT ON COLUMN RPL.RPL_SQ IS '리플번호';

COMMENT ON COLUMN RPL.BRD_SQ IS '게시글번호';

COMMENT ON COLUMN RPL.EMP_SQ IS '사원번호';

COMMENT ON COLUMN RPL.RPL_CTT IS '내용';

COMMENT ON COLUMN RPL.RPL_RDT IS '등록일';

COMMENT ON COLUMN RPL.RPL_LDT IS '최종수정일';

ALTER TABLE RPL
	ADD
		CONSTRAINT PK_RPL
		PRIMARY KEY (
			RPL_SQ
		);

/* 결재양식분류 */
CREATE TABLE APV_FORM_DIV (
	APV_FORM_DIV_SQ NUMBER NOT NULL, /* 결재양식분류번호 */
	APV_FORM_DIV_NM VARCHAR2(100) /* 결재양식분류명 */
);

COMMENT ON TABLE APV_FORM_DIV IS '결재양식분류';

COMMENT ON COLUMN APV_FORM_DIV.APV_FORM_DIV_SQ IS '결재양식분류번호';

COMMENT ON COLUMN APV_FORM_DIV.APV_FORM_DIV_NM IS '결재양식분류명';

ALTER TABLE APV_FORM_DIV
	ADD
		CONSTRAINT PK_APV_FORM_DIV
		PRIMARY KEY (
			APV_FORM_DIV_SQ
		);

/* 결재양식 */
CREATE TABLE APV_FORM (
	APV_FORM_SQ NUMBER NOT NULL, /* 결재양식번호 */
	APV_FORM_DIV_SQ NUMBER, /* 결재양식분류번호 */
	APV_FORM_NM VARCHAR2(100), /* 결재양식이름 */
	APV_FORM_CTT CLOB /* 결재양식내용 */
);

COMMENT ON TABLE APV_FORM IS '결재양식';

COMMENT ON COLUMN APV_FORM.APV_FORM_SQ IS '결재양식번호';

COMMENT ON COLUMN APV_FORM.APV_FORM_DIV_SQ IS '결재양식분류번호';

COMMENT ON COLUMN APV_FORM.APV_FORM_NM IS '결재양식이름';

COMMENT ON COLUMN APV_FORM.APV_FORM_CTT IS '결재양식내용';

ALTER TABLE APV_FORM
	ADD
		CONSTRAINT PK_APV_FORM
		PRIMARY KEY (
			APV_FORM_SQ
		);

/* 전자결재 */
CREATE TABLE APV (
	APV_SQ NUMBER NOT NULL, /* 문서번호 */
	APV_FORM_SQ NUMBER, /* 결재양식번호 */
	APV_OK_SQ NUMBER, /* 결재승인번호 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	APV_SAVE NUMBER, /* 문서보존기간 */
	APV_CTT CLOB, /* 문서내용 */
	APV_FL_RT VARCHAR2(200), /* 파일경로 */
	APV_FL_NM VARCHAR2(200), /* 파일이름 */
	EMP_1ST_SQ VARCHAR2(100), /* 1차승인자 */
	EMP_2ND_SQ VARCHAR2(100), /* 2차승인자 */
	EMP_FNL_SQ VARCHAR2(100), /* 최종승인자 */
	APV_NO VARCHAR2(1000) /* 반려사유 */
);

COMMENT ON TABLE APV IS '전자결재';

COMMENT ON COLUMN APV.APV_SQ IS '문서번호';

COMMENT ON COLUMN APV.APV_FORM_SQ IS '결재양식번호';

COMMENT ON COLUMN APV.APV_OK_SQ IS '결재승인번호';

COMMENT ON COLUMN APV.EMP_SQ IS '사원번호';

COMMENT ON COLUMN APV.APV_SAVE IS '문서보존기간';

COMMENT ON COLUMN APV.APV_CTT IS '문서내용';

COMMENT ON COLUMN APV.APV_FL_RT IS '파일경로';

COMMENT ON COLUMN APV.APV_FL_NM IS '파일이름';

COMMENT ON COLUMN APV.EMP_1ST_SQ IS '1차승인자';

COMMENT ON COLUMN APV.EMP_2ND_SQ IS '2차승인자';

COMMENT ON COLUMN APV.EMP_FNL_SQ IS '최종승인자';

COMMENT ON COLUMN APV.APV_NO IS '반려사유';

ALTER TABLE APV
	ADD
		CONSTRAINT PK_APV
		PRIMARY KEY (
			APV_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_DPT_TO_EMP
		FOREIGN KEY (
			DPT_SQ
		)
		REFERENCES DPT (
			DPT_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_PST_TO_EMP
		FOREIGN KEY (
			PST_SQ
		)
		REFERENCES PST (
			PST_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_PMS_TO_EMP
		FOREIGN KEY (
			PMS_SQ
		)
		REFERENCES PMS (
			PMS_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_RNK_TO_EMP
		FOREIGN KEY (
			RNK_SQ
		)
		REFERENCES RNK (
			RNK_SQ
		);

ALTER TABLE SCD
	ADD
		CONSTRAINT FK_EMP_TO_SCD
		FOREIGN KEY (
			EMP_NO
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE SCD
	ADD
		CONSTRAINT FK_DPT_TO_SCD
		FOREIGN KEY (
			DPT_SQ
		)
		REFERENCES DPT (
			DPT_SQ
		);

ALTER TABLE BRD
	ADD
		CONSTRAINT FK_BRD_DIV_TO_BRD
		FOREIGN KEY (
			BRD_DIV_SQ
		)
		REFERENCES BRD_DIV (
			BRD_DIV_SQ
		);

ALTER TABLE BRD
	ADD
		CONSTRAINT FK_EMP_TO_BRD
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ADDR
	ADD
		CONSTRAINT FK_ADDR_GRP_TO_ADDR
		FOREIGN KEY (
			ADDR_GRP_SQ
		)
		REFERENCES ADDR_GRP (
			ADDR_GRP_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_IPT_TO_ML
		FOREIGN KEY (
			ML_IPT_SQ
		)
		REFERENCES ML_IPT (
			ML_IPT_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_STT_TO_ML
		FOREIGN KEY (
			ML_STT_SQ
		)
		REFERENCES ML_STT (
			ML_STT_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_GRP_TO_ML
		FOREIGN KEY (
			ML_GRP_SQ
		)
		REFERENCES ML_GRP (
			ML_GRP_SQ
		);

ALTER TABLE CMT
	ADD
		CONSTRAINT FK_EMP_TO_CMT
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE EMP_PIC
	ADD
		CONSTRAINT FK_EMP_TO_EMP_PIC
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ADDR_GRP
	ADD
		CONSTRAINT FK_EMP_TO_ADDR_GRP
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ML_GRP
	ADD
		CONSTRAINT FK_EMP_TO_ML_GRP
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE RPL
	ADD
		CONSTRAINT FK_BRD_TO_RPL
		FOREIGN KEY (
			BRD_SQ
		)
		REFERENCES BRD (
			BRD_SQ
		);

ALTER TABLE APV_FORM
	ADD
		CONSTRAINT FK_APV_FORM_DIV_TO_APV_FORM
		FOREIGN KEY (
			APV_FORM_DIV_SQ
		)
		REFERENCES APV_FORM_DIV (
			APV_FORM_DIV_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_APV_FORM_TO_APV
		FOREIGN KEY (
			APV_FORM_SQ
		)
		REFERENCES APV_FORM (
			APV_FORM_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_EMP_TO_APV
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_APV_OK_TO_APV
		FOREIGN KEY (
			APV_OK_SQ
		)
		REFERENCES APV_OK (
			APV_OK_SQ
		);


-- 부서번호 SEQ
DROP SEQUENCE "DPT_SQ";
CREATE SEQUENCE "DPT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 직책번호 SEQ
DROP SEQUENCE "PST_SQ";
CREATE SEQUENCE "PST_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 권한번호 SEQ
DROP SEQUENCE "PMS_SQ";
CREATE SEQUENCE "PMS_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 직위번호 SEQ
DROP SEQUENCE "RNK_SQ";
CREATE SEQUENCE "RNK_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 일정번호 SEQ
DROP SEQUENCE "SCD_SQ";
CREATE SEQUENCE "SCD_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 사원번호 SEQ
DROP SEQUENCE "EMP_SQ";
CREATE SEQUENCE "EMP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일그룹번호 SEQ
DROP SEQUENCE "ML_GRP_SQ";
CREATE SEQUENCE "ML_GRP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일번호 SEQ
DROP SEQUENCE "ML_SQ";
CREATE SEQUENCE "ML_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 출퇴근번호 SEQ
DROP SEQUENCE "CMT_SQ";
CREATE SEQUENCE "CMT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일상태번호 SEQ
DROP SEQUENCE "ML_STT_SQ";
CREATE SEQUENCE "ML_STT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일중요분류번호 SEQ
DROP SEQUENCE "ML_IPT_SQ";
CREATE SEQUENCE "ML_IPT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재승인번호 SEQ
DROP SEQUENCE "APV_OK_SQ";
CREATE SEQUENCE "APV_OK_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 문서번호 SEQ
DROP SEQUENCE "APV_SQ";
CREATE SEQUENCE "APV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재양식분류번호 SEQ
DROP SEQUENCE "APV_FORM_DIV_SQ";
CREATE SEQUENCE "APV_FORM_DIV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재양식번호 SEQ
DROP SEQUENCE "APV_FORM_SQ";
CREATE SEQUENCE "APV_FORM_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 게시판구분번호 SEQ
DROP SEQUENCE "BRD_DIV_SQ";
CREATE SEQUENCE "BRD_DIV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 게시글번호 SEQ
DROP SEQUENCE "BRD_SQ";
CREATE SEQUENCE "BRD_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 리플번호 SEQ
DROP SEQUENCE "RPL_SQ";
CREATE SEQUENCE "RPL_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 주소록그룹번호 SEQ
DROP SEQUENCE "ADDR_GRP_SQ";
CREATE SEQUENCE "ADDR_GRP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 주소록번호 SEQ
DROP SEQUENCE "ADDR_SQ";
CREATE SEQUENCE "ADDR_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;
