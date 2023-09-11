create table fbp_news (
   n_no number primary key,
   n_title varchar2(100) not null,
   n_content varchar2(2000) not null,
   n_writer varchar2(50) not null,
   n_regdate date default sysdate,
   n_updatedate date default sysdate);

select * from fbp_news;
select * from fbp_news where n_no > 0;



insert into fbp_news(n_no, n_title, n_content, n_writer,n_regdate,n_updatedate)
values(seq_news.nextval,'손흥민 헤트트릭','헤트트릭','김승규',sysdate,sysdate, 승규ㅎ);

   
create sequence seq_news;

create table fbp_team (
   t_no number primary key,
   t_name varchar2(50) not null,
   t_birth number not null,
   t_home varchar2(50) not null,
   t_leaguewin number not null,
   t_cupwin number not null,
   t_content varchar2(2000) not null
);

create sequence seq_team;

create table fbp_goods (
   g_no number primary key,
   g_name varchar2(100) not null,
   g_league varchar2(30) not null,
   g_team varchar2(20) not null,
   g_brand varchar2(20) not null,
   g_price number not null,
   g_category varchar2(20) not null,
   g_stock number not null,
   g_regdate date default sysdate
);


create sequence seq_goods;


create table news_attach (
	uuid varchar2(100) not null,
	uploadPath varchar2(200) not null,
	fileName varchar2(100) not null,
	filetype char(1) default 'I',
	n_no number(10,0)
);

select * from tbl_attach;

alter table news_attach add constraint pknews_attach primary key (uuid);

alter table news_attach add constraint fk_news_attach foreign key (n_no)
references fbp_news(n_no);