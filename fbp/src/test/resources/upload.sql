--게시글
create sequence seq_board;

create table tbl_board (
	bno number(10,0),
	title varchar2(200) not null,
	content varchar2(2000) not null,
	writer varchar2(50) not null,
	regdate date default sysdate,
	updatedate date default sysdate
);

alter table tbl_board add constraint pk_board
primary key (bno);

insert into tbl_board (bno, title, content, writer)
values (seq_board.nextval, '칼빵 조심','진짜로 조심','user00');
insert into tbl_board (bno, title, content, writer)
values (seq_board.nextval, '배빵 조심','레알로 조심','user01');

select * from TBL_BOARD;

select * from TBL_BOARD order by bno desc;

select /*+index_desc(tbl_board pk_board) */* from tbl_board where bno>0;

select rownum rn, bno, title from tbl_board;

select /*+INDEX_DEXC(tbl_board pk_board) */ rownum rn, bno, title, content, writer, regdate, updatedate
		from tbl_board where rownum <=20;
		
select * from (select/*+index_desc(tbl_board pk_board) */ rownum rn, bno, title,
	content, writer, regdate,updatedate from tbl_board
	where title like '%새로%' or content like '%테스트%' and rownum<=20) where rn > 10;

create table tbl_sample1( col1 varchar2(500));
create table tbl_sample2( col2 varchar2(50));

delete tbl_sample1;
delete tbl_sample2;
commit;

select * from tbl_sample1;
select * from tbl_sample2;

alter table tbl_board add (replycnt number default 0);

select * from TBL_BOARD;

update tbl_board set replycnt = (select count(rno) from TBL_REPLY
where tbl_reply.bno = tbl_board.bno)
	
	
--댓글
create table tbl_reply (
	rno number(10,0),
	bno number(10,0) not null,
	reply varchar2(1000) not null,
	replyer varchar2(50) not null,
	replyDate date default sysdate,
	updateDate date default sysdate
);

create sequence seq_reply;

alter table tbl_reply add constraint pk_reply primary key (rno);

alter table tbl_reply add constraint fk_reply_board
foreign key (bno) references tbl_board (bno);

select * from tbl_reply;

select * from tbl_board;

create index idx_reply on tbl_reply (bno desc, rno asc);

select /*+index(tbl_reply idx_reply) */
	rownum rn, bno,rno, reply, replyer, replyDate, updatedate
	from tbl_reply
	where bno = 33 and rno > 0;



--파일업로드
create table tbl_attach (
	uuid varchar2(100) not null,
	uploadPath varchar2(200) not null,
	fileName varchar2(100) not null,
	filetype char(1) default 'I',
	bno number(10,0)
);

select * from tbl_attach;

alter table tbl_attach add constraint pk_attach primary key (uuid);

alter table tbl_attach add constraint fk_board_attach foreign key (bno)
references tbl_board(bno);