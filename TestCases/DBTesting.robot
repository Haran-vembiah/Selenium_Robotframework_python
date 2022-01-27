#https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html

*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup       Connect To Database    psycopg2    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBHost}         127.0.0.1
${DBName}         robot_sample
${DBPass}         54321
${DBPort}         5432
${DBUser}         postgres

*** Test Cases ***
#Create person table
#    ${output}=   Execute SQL String  Create table sample_db.person(id integer,first_name varchar(20),last_name varchar(20));
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Inserting Data in person Table
#    Single Record
#    ${output}=   Execute SQL String  Insert into sample_db.person values(101,"John","canady");

#Multiple records
#    ${output}=   Execute SQL Script  ./TestData/mydb_person_insertData.sql
#    log to console  ${output}
#    should be equal as strings  ${output}   None


#======== Uncomment from here ==============
#Check David record present in Person Table
#    check if exists in database  select id from mydb.person where first_name="David";
#
#Check Jio record Not present in Person Table
#    check if not exists in database  select id from mydb.person where first_name="Jio";
#
#Check Person Table exists in mydb database
#    table must exist  person
#
#Verify Row Count is Zero
#    row count is 0  SELECT * FROM mydb.person WHERE first_name = 'xyz';
#
#Verify Row Count is Equal to Some Value
#   row count is equal to x  SELECT * FROM mydb.person WHERE first_name = 'David';   1
#
#Verify Row Count is Greater than Some Value
#    row count is greater than x  SELECT * FROM mydb.person WHERE first_name = 'David';      0
#
#Verify Row Count is less than Some Value
#    row count is less than x  SELECT * FROM mydb.person WHERE first_name = 'David';     5
#
#Update record in person table
#     ${output}=   Execute SQL String  Update mydb.person set first_name="Jio" where id=104;
#     log to console  ${output}
#     should be equal as strings     ${output}       None
#
#Retrieve Records from Person Table
#       @{queryResults}=     query       Select * from mydb.person;
#       log to console  many @{queryResults}

Retrieve Records from newtable Table
       @{queryResults}=     query       select * from sample_db.newtable;
       log to console  many @{queryResults}

Retrieve Records from person Table
       @{queryResults}=     query       select * from sample_db.person;
       log to console  many @{queryResults}

#Delete Records from person table
#     ${output}=   Execute SQL String     Delete from mydb.person;
#    should be equal as strings  ${output}    None
