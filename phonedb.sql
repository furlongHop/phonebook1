--0. 계정 생성 및 권한 부여
create user phonedb identified by phonedb;   
grant resource, connect to phonedb;


--1. table 생성
create table person(
    person_id number,
    name varchar2(10),
    hp varchar2(50),
    company varchar2(50)
);

--2. 시퀀스 생성
create sequence seq_person_id 
increment by 1 
start with 1  
nocache;

--3. insert문
insert into person
values(seq_person_id.nextval,'이효리','010-1111-1111','02-1111-1111');

insert into person
values(seq_person_id.nextval,'정우성','010-2222-2222','02-2222-2222');

insert into person
values(seq_person_id.nextval,'유재석','010-3333-3333','02-3333-3333');

insert into person
values(seq_person_id.nextval,'이정재','010-4444-4444','02-4444-4444');

insert into person
values(seq_person_id.nextval,'서장훈','010-5555-5555','02-5555-5555');

--4. select문
select * from person;

--5. update문
update person 
set hp = '010-9999-9999',
    company = '02-9999-9999' 
where person_id = 4; 

--6. delete문
delete from person
where person_id = 5;

--7. 테이블, 시퀀스 삭제
drop table person;
drop sequence seq_person_id;

--8. commit
commit;
