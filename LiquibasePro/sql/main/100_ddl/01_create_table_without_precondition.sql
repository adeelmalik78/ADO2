--liquibase formatted sql

--changeset adeel:changeset01
create table create_table (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table create_table

--changeset adeel:01
create table create_table2 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table create_table2

--changeset adeel:00
CREATE TABLE person
( id int primary key,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL
)
--rollback drop table person

--changeset adeel:04
ALTER TABLE person
    add column CITY varchar(50)

--changeset adeel:05
ALTER TABLE person drop column CITY;

--changeset adeel:06
ALTER TABLE person
    add column CITY varchar(200)