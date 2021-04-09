*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}    ${DBUser}   ${DBPass}  ${DBHost}   ${DBPort}
Suite Teardown  Diconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPort}       3306


*** Test Cases ***
Create person table
    ${output}=  Execute SQL String  Create table person(id integer,first_name varchar(20),last_name varchar(20));
    log to console  ${output}
    should be equal as strings  ${output}   None

Insering data in person
    ${output}=  Execute SQL String  insert into person values(101,"Urmila","Vadi");
    log to console  ${output}
    should be equal as strings  ${output}   None