create table Team_table(
T_no number(5) primary key,
T_name varchar2(50) not null,
T_league varchar2(50) not null,
T_photo varchar2(100) not null,
T_stadium varchar2(100) not null,
T_description varchar2(2000)
);

create sequence seq_team;
drop sequence seq_team;

drop table Team_table;
select * from TEAM_TABLE;

drop table player_table;


create table player_table(
P_name varchar2(50) not null,
P_brith varchar2(50) not null,
P_native varchar2(50) not null,
P_team varchar2(50),
P_position varchar2(10) not null,
P_photo varchar2(100),
P_description varchar2(2000)
);


INSERT INTO Team_table values (seq_team.nextval,'파리', '리가', 'psg_bk.jpeg', '파리 스타디움', '파리 팀은 리가에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'토트넘', 'EPL', 'tot_bk.jpg', '토트넘 스타디움', '토트넘 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'울버햄튼', 'EPL', 'wolv_bk.jpg', '울버햄튼 스타디움', '울버햄튼 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'리버풀', 'EPL', 'liv_bk.jpg', '리버풀 스타디움', '리버풀 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'맨유', 'EPL', 'manu_bk.jpg', '맨유 스타디움', '맨유 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'맨시치', 'EPL', 'manc_bk.jpg', '맨시치 스타디움', '맨시치 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'아스널', 'EPL', 'asn_bk.jpg', '아스널 스타디움', '아스널 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'도르트문트', '분데스리가', 'dom_bk.jpg', '도르트문트 스타디움', '도르트문트 팀은 분데스리가에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'뮌헨', '분데스리가', 'bm_bk.jpg', '뮌헨 스타디움', '뮌헨 팀은 분데스리가에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'첼시', 'EPL', 'cls_bk.jpg', '첼시 스타디움', '첼시 팀은 EPL에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'레알', '라리가', 'rem_bk.jpg', '레알 스타디움', '레알 팀은 라리가에서 활동하고 있는 프로 축구팀입니다.');
INSERT INTO Team_table values (seq_team.nextval,'바르샤', '라리가', 'fcb_bk.jpg', '바르샤 스타디움', '바르샤 팀은 라리가에서 활동하고 있는 프로 축구팀입니다.');


create table team_attach (
	uuid varchar2(100) not null,
	uploadPath varchar2(200) not null,
	fileName varchar2(100) not null,
	filetype char(1) default 'I',
	t_no number(10,0)
);

select * from team_attach;

alter table team_attach add constraint pk_tattach primary key (uuid);

alter table team_attach add constraint fk_team_attach foreign key (t_no)
references team_table(t_no);