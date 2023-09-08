create table fbp_goods (
   g_no number not null,
   g_name varchar2(100) not null,
   g_league varchar2(30) not null,
   g_team varchar2(20) not null,
   g_brand varchar2(20) not null,
   g_price number not null,
   g_category varchar2(20) not null,
   g_stock number not null,
   g_regdate date default sysdate,
   g_fileName varchar2(100) not null
);

drop table fbp_goods;
select * from FBP_GOODS;


create sequence seq_goods start with 1000 increment by 1;

drop sequence seq_goods;

alter table fbp_goods add constraint pk_goods primary key (g_no);
alter table fbp_goods drop constraint pk_goods primary key (g_no);


insert into FBP_GOODS
values (seq_goods.nextval, 'a','a','a','a',1000,'a',10,sysdate,'a');

--파일업로드
create table fbp_attach (
   uuid varchar2(100) not null,
   uploadPath varchar2(200) not null,
   fileName varchar2(100) not null,
   fileType char(1) default 'I',
   g_no number(10,0)
);

select * from fbp_attach;

drop table fbp_attach;

alter table fbp_attach add constraint pk_attach primary key (uuid);

alter table fbp_attach add constraint fk_goods_attach foreign key (g_no)
references fbp_Goods(g_no);