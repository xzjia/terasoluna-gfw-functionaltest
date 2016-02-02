/*----------*/
/*-- DROP --*/
/*----------*/
DROP TABLE person;
DROP TABLE item1;
DROP TABLE item2;
DROP TABLE item3;
DROP TABLE todo;
DROP TABLE system_date;
DROP TABLE operation_date;
DROP TABLE document;
DROP TABLE userinfo;
DROP SEQUENCE integer_seq;
DROP SEQUENCE long_seq;
DROP SEQUENCE string_seq;
DROP SEQUENCE big_integer_seq;
DROP SEQUENCE error_seq;

/*------------*/
/*-- CREATE --*/
/*------------*/

/*-- pagination test table --*/
create table person (
    person_id int not null,
    firstname varchar(25) not null,
    lastname varchar(25)  not null
);
ALTER TABLE person ADD PRIMARY KEY (person_id);

/*-- codelist test table --*/
create table item1 (
    item1_id int not null,
    code varchar(25) not null,
    label varchar(25)  not null
);
ALTER TABLE item1 ADD PRIMARY KEY (code);

/*-- codelist test table --*/
create table item2 (
    item2_id int not null,
    code varchar(25) not null,
    label varchar(25)  not null
);
ALTER TABLE item2 ADD PRIMARY KEY (code);

/*-- codelist test table --*/
create table item3 (
    item3_id int not null,
    code varchar(25) not null,
    label_en varchar(25)  not null,
    label_ja varchar(25)  not null
);
ALTER TABLE item3 ADD PRIMARY KEY (code);

/*-- queryescape test table --*/
create table todo (
    id int not null,
    todo_title varchar(20) not null
);
ALTER TABLE todo ADD PRIMARY KEY (id);

/*-- Date test table --*/
create table system_date(
	system_date_id int not null,
	now timestamp not null
);
ALTER TABLE system_date ADD PRIMARY KEY (system_date_id);
create table operation_date(
	operation_date_id int not null,
	diff numeric not null
);
ALTER TABLE operation_date ADD PRIMARY KEY (operation_date_id);

/*-- File Download table --*/
create table document (
	document_id int not null,
	contents binary(30) not null
);
ALTER TABLE document ADD PRIMARY KEY (document_id);

/*-- redirect test table --*/
create table userinfo (
    username varchar(25) not null,
    name varchar(25) not null,
    address varchar(25) not null
);
ALTER TABLE userinfo ADD PRIMARY KEY (username);

CREATE SEQUENCE integer_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999999
    START WITH 1
    NO CYCLE
;
CREATE SEQUENCE long_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999999
    START WITH 1
    NO CYCLE
;
CREATE SEQUENCE string_seq 
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999999
    START WITH 1
    NO CYCLE
;
CREATE SEQUENCE big_integer_seq 
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999999
    START WITH 1
    NO CYCLE
;
CREATE SEQUENCE error_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 999999999
    START WITH 1
    NO CYCLE
;