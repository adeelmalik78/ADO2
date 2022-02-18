export LIQUIBASE_COMMAND_URL=jdbc:oracle:thin:@demo-db1-rhel6.datical.net:1521/PP_DEV.datical.net
export LIQUIBASE_COMMAND_USERNAME=DATICAL_USER
export LIQUIBASE_COMMAND_PASSWORD=DATICAL_USER_PW

export LIQUIBASE_HUB_MODE=off

export LIQUIBASE_COMMAND_CHANGELOG_FILE=changelog_master.xml
#export LIQUIBASE_COMMAND_CHANGELOG_FILE=dbdump.xml

export LIQUIBASE_PRO_LICENSE_KEY="ABwwGgQUjxKd8KQ1fa7HHI4P0Qsq3L22wOICAgQAjkB2jF6k42cSkAOMPPHgsp+e269W6eQeasbDCM6ks26gap8UcqOJnnGmC1REO0wyJmeH6kEg9RXXdsOLpwP0ieB0m+L0qX5V312gnWEs2srdn4y2MQa00f7rkvlIGFIITA5PytTg8VOaelFuwgOG3hl9qxIG3FPFLcvWd6LZvqt4+tSil8FJ6a8kfWPyrxG73ELEtWgGuIlH7+u9DKyMMWCGELuM3+YcHNDgfac3lri30+Dz0qB2xjm5VG5ikiiG/Hikvcbm4k/mJZEDimSRR7uMjLs/MFkcRqCCmhLUareSb2TWsfrOXaZbZ/1vNjbC5Mw3P6i4jxzzSDbVUMtQ8bZiPJsmF9QzOc180sytVZI1HkBTPUVx2GVmzCHYevTY7WSenIvzHGwv6KBspZL8ZHxRSU+2foW3y1aYmEDxRaxqUKplhidWE69InLidVKVbDN2XHpSsNZVOICoY5ggBN6HL6AazokZZr/ut35oVqvwBocsbVFDmh7l4OxlUHnQjxunywLL8leZztcOA9ZDVEGWzK+0KIUmMNYc3WRJYutMFgU10oGXpNA4PWjhlzNUzbOt2roNejsmqpY5n9S9aYQ0xzsevYnvx05tYF4E/blOhE41YWfEQKZnqXRj0MDVO7p1r+SCfCL/OvejvvcuHidU4zP0DwiY3gFZHTnNAjXk="


liquibase --outputFile=myschemaSnapshot.json snapshot --snapshotFormat=json  
liquibase --outputFile=myschemaSnapshot.json --schemas=DATICAL_USER --defaultSchemaName=DATICAL_USER snapshot --snapshotFormat=json 

./liquibase --url=jdbc:oracle:thin:@demo-db1-rhel6.datical.net:1521/PP_DEV.datical.net --username=DATICAL_USER --password=DATICAL_USER_PW --outputFile="C:\myschemaSnapshot.json" --schemas=DATICAL_USER snapshot --snapshotFormat=json

./liquibase --referenceUrl="offline:oracle?snapshot=C:\myschemaSnapshot.json" --url=jdbc:oracle:thin:@demo-db1-rhel6.datical.net:1521/PP_DEV.datical.net --username=DATICAL_USER --password=DATICAL_USER_PW --schemas=DATICAL_USER diff

liquibase --referenceUrl="offline:oracle?snapshot=myschemaSnapshot.json" diff
liquibase --referenceUrl="offline:oracle:thin?snapshot=myschemaSnapshot.json" --schemas=DATICAL_USER --referenceSchemas=DATICAL_USER diff

 liquibase --changeLogFile=dbdump.oracle.sql --diffTypes="tables,functions,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data,storedprocedure,triggers,sequences,databasePackage,databasePackageBody" generateChangeLog
 
 liquibase --changeLogFile=dbdump.oracle.sql --dataOutputDirectory=data --diffTypes="tables,functions,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data,storedprocedure,triggers,sequences,databasePackage,databasePackageBody" generateChangeLog

liquibase --changelogFile=changelog_master.xml --url=jdbc:oracle:thin:@demo-db1-rhel6.datical.net:1521/PP_DEV.datical.net --username=DATICAL_USER --password=DATICAL_USER_PW --classpath=ojdbc8.jar validate
liquibase --changelogFile=sql/changelog_master.xml --classpath=`pwd`:`pwd`/sql status --verbose
liquibase --changelogFile=sql/changelog_master.xml --classpath=/str-db/src/main/resources/com/wellsfargo/str/db/seed status --verbose

liquibase --changelogFile=changelog_master.xml checks run

cd ../../liquibase-4.7.0 && export PATH=`pwd`:$PATH && cd ../ADO/LiquibasePro
cd ../../liquibase-4.2.2 && export PATH=`pwd`:$PATH && cd ../ADO/LiquibasePro


liquibase checks delete --check-name=SqlGrantAlterWarn
liquibase checks enable --check-name=SqlGrantSpecificPrivsWarn
SqlGrantAlterWarn
2
"ALTER SESSION","ALTER SYSTEM",EXP_FULL_DATABASE,IMP_FULL_DATABASE,"DROP ANY","SELECT ANY","COMMENT ANY"
"ALTER SESSION","ALTER SYSTEM",EXP_FULL_DATABASE,IMP_FULL_DATABASE,"CREATE ANY TABLE","DROP ANY TABLE","ALTER ANY TABLE","SELECT ANY TABLE","COMMENT ANY TABLE","EXECUTE ANY PROCEDURE"






--changeset adeel:04
GRANT ALTER SESSION TO LB_APP_USER;


--changeset adeel:05
GRANT EXP_FULL_DATABASE TO LB_APP_USER;
GRANT IMP_FULL_DATABASE TO LB_APP_USER;

--changeset adeel:07
GRANT SELECT ANY TABLE TO LB_APP_USER;

--changeset adeel:08
GRANT COMMENT ANY TABLE TO LB_APP_USER;

--changeset adeel:10
GRANT EXECUTE ANY TABLE TO LB_APP_USER;

--changeset adeel:11
GRANT ALTER ANY TABLE TO LB_APP_USER;

--changeset adeel:11
GRANT EXECUTE ANY PROCEDURE TO LB_APP_USER;

--changeset adeel:16
SELECT * FROM DATABASECHANGELOG;

--changeset adeel:19
COMMENT ON TABLE Employee IS 'This is a table for Employee.';


--changeset adeel:26
create table tablespace (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);

create table zone (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);

create table UNLIMITED (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);