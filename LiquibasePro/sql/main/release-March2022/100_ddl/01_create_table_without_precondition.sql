--liquibase formatted sql

--changeset adeel:01
create table create_table (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table create_table

--changeset adeel:02
create table create_table2 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table create_table2

--changeset adeel:03
CREATE TABLE person
( id int primary key,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL
)
--rollback drop table person
