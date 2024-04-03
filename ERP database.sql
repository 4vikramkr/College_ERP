create database ERP
use ERP

--------------------------------------schema----login---------------
create schema loginn

create table loginn.adminn
(Username varchAR(20) PRIMARY KEY,
pASSWORDD VARCHAR(15)
)

create table loginn.userr
(Username varchAR(20) PRIMARY KEY,
pASSWORDD VARCHAR(15)
)

create table loginn.teacher
(Username varchAR(20) PRIMARY KEY,
pASSWORDD VARCHAR(15)
)

--------------------------------------schema----Register---------------
create schema Register

create table Register.student
(S_id varchar(10) primary key,
S_Name varchar(20) not null,
S_Program varchar(20),
Fee int,
Sessionn int,
Mobile_No bigint
)

create table Register.teacher
(T_id varchar(10) primary key,
T_Name varchar(20) not null,
T_Program varchar(20),
Qualification varchar(20),
Department varchar(20),
Designation varchar(20),
Mobile_No bigint
)
--------------------------------------------------not run----
create table Register.Student_Detail
(S_id varchar(10) primary key,
S_Name varchar(20) not null,
S_Addres varchar(50),
Father_Name varchar(20),
Mobile_No bigint
)

create table Register.Teacher_Personal_Detail
(T_id varchar(10) primary key,
T_Name varchar(20) not null,
T_Addres varchar(50),
T_Salary money,
Mobile_No bigint
)

create schema Transport

create table Transport.Student_personal_detail
(S_id varchar(10) primary key,
S_Name varchar(20) not null,
S_Addres varchar(50),
Father_Name varchar(20),
Mobile_No bigint
)

create table Transport.Student_transport_detail
(S_id varchar(10) primary key,
S_Name varchar(20) not null,
Bus_No varchar(15),
Driver_id int primary key,
Driver_Name varchar(20),
Driver_Mobile_No bigint
)

---------------------------------------------------------------------------
create schema student

create table student.fee_detail
(S_id int primary key,
S_Name varchar(20),
course varchar(20),
fee int,
submit_fee int,
balance_fee int
)

create table student.hostel_detail
(S_id int primary key,
S_Name varchar(20),
course varchar(20),
Hostel_fee int,
Room_no varchar(5),
Remark varchar(50)
)

create table student.document
(S_id int primary key,
S_Name varchar(20)
class_12th_certificate varchar(5),
class_10th_certificate varchar(5)
)

-------------------------------------------------------------------------







