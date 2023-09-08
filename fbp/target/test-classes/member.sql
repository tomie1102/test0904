

create table member_table(
m_no number(5) primary key,
m_name varchar2(10) not null,
m_id varchar2(10) not null,
m_pw varchar2(20) not null,
m_tel varchar2(20) unique,
m_address varchar2(500)

);

drop table member_table;

create sequence seq_mem;

-- 10개의 더미 데이터 삽입
INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름1', '아이디1', '비밀번호1', '010-1234-5671', '주소1');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름2', '아이디2', '비밀번호2', '010-1234-5672', '주소2');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름3', '아이디3', '비밀번호3', '010-1234-5673', '주소3');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름4', '아이디4', '비밀번호4', '010-1234-5674', '주소4');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름5', '아이디5', '비밀번호5', '010-1234-5675', '주소5');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름6', '아이디6', '비밀번호6', '010-1234-5676', '주소6');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름7', '아이디7', '비밀번호7', '010-1234-5677', '주소7');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름8', '아이디8', '비밀번호8', '010-1234-5678', '주소8');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름9', '아이디9', '비밀번호9', '010-1234-5679', '주소9');

INSERT INTO member_table (m_no, m_name, m_id, m_pw, m_tel, m_address)
VALUES (seq_mem.NEXTVAL, '이름10', '아이디10', '비밀번호10', '010-1234-56710', '주소10');




