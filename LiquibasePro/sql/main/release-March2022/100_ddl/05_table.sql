--liquibase formatted sql

--changeset adeel:05 labels:release1,jira-101,hotfix context:DEV,QA,PROD
create table table5 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table create_table

--changeset adeel:06 labels:release2 context:DEV,QA
create table table6 (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table table6

--changeset adeel:07 labels:release2 context:DEV,QA
drop table table6;
