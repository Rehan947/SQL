CREATE DATABASE JULY_ONE;

USE JULY_ONE ;

CREATE TABLE DAT1
(
D3_ID INT PRIMARY KEY ,
D3_FNAME VARCHAR(23),
D3_AGE INT
);

SELECT * FROM DAT3 WHERE D3_AGE = (SELECT W5_ENR FROM WE5 WHERE W5_ENR = 23) ;


SELECT * FROM DAT3 WHERE D3_AGE > (SELECT AVG(D3_AGE) FROM DAT3 ) ;

SELECT AVG(D3_AGE) FROM DAT3 ;

SELECT facenumber_in_poster ,COUNT(imdb_ID) FROM imdb_movies_dataset GROUP BY facenumber_in_poster ;

select age,count(PassengerId) from titanic group by Age  order by age;

select age,count(PassengerId) from titanic group by Age having 
 count(PassengerId) >= 2 order by age;
 
 
 CREATE TABLE RECO
 (
 R_IND INT PRIMARY KEY ,
 R_AGE INT ,
 R_GENDER ENUM("M","F","O")
 );
