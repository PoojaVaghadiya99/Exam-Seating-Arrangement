create database university;

use university;

create table faculty
(
	fid varchar(10) primary key,
    fname varchar(100)
);

create table department
(
	fid varchar(10) references faculty(fid),
    did varchar(10) primary key,
    dname varchar(100)
);

create table course
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    cid varchar(10) primary key,
    cname varchar(100)
);

create table exam
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    cid varchar(10) references course(cid),
    eid varchar(10),
    ename varchar(100)
);


create table subject
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    cid varchar(10) references course(cid),
    eid varchar(10) references exam(eid),
    sid varchar(10) primary key,
    sname varchar(100),
    sdate date,
    stime time
);

create table block
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    bid varchar(10) primary key,
    bname varchar(100),
    bfloor varchar(50),
    btotalseat int
);

create table student
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    eid varchar(10) references exam(eid),
    cid varchar(10) references course(cid),
    prn varchar(20) primary key,
    name varchar(100),
    email varchar(100),
    phone varchar(100)
); 

create table admin
(
	id int primary key auto_increment,
    name varchar(100),
    password varchar(100)
);

create table seatallocate
(
	fid varchar(10) references faculty(fid),
	did varchar(10) references department(did),
    eid varchar(10) references exam(eid),
    cid varchar(10) references course(cid),
    prn varchar(20) references studenu(prn),
	bid varchar(10) references block(bid),
    seatno int primary key
);

create table seatassign
(
    eid varchar(10) references exam(eid),
    cid varchar(10) references course(cid),
    primary key(eid,cid)
);


insert into faculty values 
("F01","Faculty of Arts"),
("F02","Faculty of Science"),
("F03","Faculty of Education and Psychology"),
("F04","Faculty of Commerce"),
("F05","Faculty of Medicine"),
("F06","Faculty of Technology and Engineering"),
("F07","Faculty of Law"),
("F08","Faculty of Fine Arts"),
("F09","Faculty of Family and Community Sciences"),
("F10","Faculty of Social Work"),
("F11","Faculty of Performing Arts"),
("F12","Faculty of Management Studies"),
("F13","Faculty of Journalism and Communication"),
("F14","Faculty of Pharmacy");


insert into department values
("F01","D0101","Department of Archaeology and Ancient History"),
("F01","D0102","Department of Economics"),
("F01","D0103","Department of English"),
("F01","D0104","Department of French"),
("F01","D0105","Department of German"),
("F01","D0106","Department of Gujarati"),
("F01","D0107","Department of Hindi"),
("F01","D0108","Department of History"),
("F01","D0109","Department of Library and Information Science"),
("F01","D0110","Department of Linguistics"),
("F01","D0111","Department of Marathi"),
("F01","D0112","Department of Persian, Arabic and Urdu"),
("F01","D0113","Department of Philosophy"),
("F01","D0114","Department of Political Science"),
("F01","D0115","Department of Russian"),
("F01","D0116","Department of Sanskrit, Pali and Prakrit"),
("F01","D0117","Department of Sindhi"),
("F01","D0118","Department of Sociology"),
("F02","D0201","Department of Bio-Chemistry"),
("F02","D0202","Department of Botany"),
("F02","D0203","Department of Chemistry"),
("F02","D0204","Department of Computer Applications"),
("F02","D0205","Department of Environmental Studies"),
("F02","D0206","Department of Geography"),
("F02","D0207","Department of Geology"),
("F02","D0208","Department of Mathematics"),
("F02","D0209","Department of Microbiology"),
("F02","D0210","Department of Physics"),
("F02","D0211","Department of Statistics"),
("F02","D0212","Department of Zoology"),
("F02","D0213","Dr. Vikram Sarabhai Institute of Cell and Molecular Biology"),
("F03","D0301","Department of Education (CASE)"),
("F03","D0302","Department of Educational Administration"),
("F03","D0303","Department of Psychology"),
("F03","D0304","University Experimental School"),
("F04","D0401","Department of Accounting and Financial Management"),
("F04","D0402","Department of Banking and Insurance"),
("F04","D0403","Department of Business Economics"),
("F04","D0404","Department of Business Law (HPFU)"),
("F04","D0405","Department of Commerce And Business Management"),
("F04","D0406","Department of Cooperative Management & Rural Studies"),
("F04","D0407","Department of English"),
("F04","D0408","Department of Statistics"),
("F05","D0501","ANATOMY"),
("F05","D0502","ANAESTHESIOLOGY"),
("F05","D0503","BIOCHEMISTRY"),
("F05","D0504","DENTISTRY"),
("F05","D0505","EMERGENCY MEDICINE"),
("F05","D0506","FORENSIC MEDICINE"),
("F05","D0507","GENERAL SURGERY"),
("F05","D0508","IMMUNO-HAEMATOLOGY & BLOOD TRANSFUSION"),
("F05","D0509","MEDICINE"),
("F05","D0510","MICROBIOLOGY"),
("F05","D0511","OBSTETRICS & GYNAECOLOGY"),
("F05","D0512","OPHTHALMOLOGY"),
("F05","D0513","ORTHOPAEDICS"),
("F05","D0514","OTORHINOLARYNGOLOGY"),
("F05","D0515","PREVENTIVE & SOCIAL MEDICINE"),
("F05","D0516","PATHOLOGY"),
("F05","D0517","PAEDIATRICS"),
("F05","D0518","PHARMACOLOGY"),
("F05","D0519","PHYSIOLOGY"),
("F05","D0520","PLASTIC SURGERY"),
("F05","D0521","PSYCHIATRY"),
("F05","D0522","PULMONARY MEDICINE"),
("F05","D0523","RADIOLOGY"),
("F05","D0524","RADIATION ONCOLOGY"),
("F05","D0525","SKIN & VD"),
("F06","D0601","Department of Applied Chemistry"),
("F06","D0602","Department of Applied Mathematics"),
("F06","D0603","Department of Applied Mechanics and Structural Engineering"),
("F06","D0604","Department of Applied Physics"),
("F06","D0605","Department of Architecture"),
("F06","D0606","Department of Business Economics"),
("F06","D0607","Department of Chemical Engineering"),
("F06","D0608","Department of Civil Engineering"),
("F06","D0609","Department of Computer Science and Engineering"),
("F06","D0610","Department of Electrical Engineering"),
("F06","D0611","Department of Mechanical Engineering"),
("F06","D0612","Department of Metallurgical and Materials Engineering"),
("F06","D0613","Department of Textile Chemistry"),
("F06","D0614","Department of Textile Engineering"),
("F06","D0615","Water Resources Engineering and Management Institute (WREMI)"),
("F07","D0701","Department of Law"),
("F08","D0801","Department of Applied Arts"),
("F08","D0802","Department of Art History and Aesthetics"),
("F08","D0803","Department of Graphic Arts"),
("F08","D0804","Department of Museology"),
("F08","D0805","Department of Painting"),
("F08","D0806","Department of Sculpture"),
("F08","D0807","Maharaja Ranjitsinh Gaekwad Institute of Design (MRID)"),
("F09","D0901","Chetan Balwadi"),
("F09","D0902","Department of Clothing and Textile"),
("F09","D0903","Department of Extension and Communication"),
("F09","D0904","Department of Family and Community Resource Management"),
("F09","D0905","Department of Foods and Nutrition"),
("F09","D0906","Department of Human Development and Family Studies"),
("F09","D0907","Institute of Fashion Technology"),
("F10","D1001","Department of Social Work"),
("F11","D1101","Department of Dramatics"),
("F11","D1102","Department of Indian Classical Dance"),
("F11","D1103","Department of Indian Classical Music (Vocal)"),
("F11","D1104","Department of Instrumental (Sitar-Violin)"),
("F11","D1105","Department of Tabla"),
("F12","D1201","Department of Management Studies"),
("F13","D1301","Department of Journalism and Communication"),
("F14","D1401","Department of Pharmacy");


insert into block values
("F06","D0609","B0101","MCA-1","1st Floor",40),
("F06","D0609","B0102","MCA-2","1st Floor",40),
("F06","D0609","B0103","MCA-3","1st Floor",40),
("F06","D0609","B0201","BE-1","2nd Floor",40),
("F06","D0609","B0202","BE-2","2nd Floor",40),
("F06","D0609","B0203","BE-3","2nd Floor",40),
("F06","D0609","B0204","BE-4","2nd Floor",40),
("F06","D0609","B0205","ME-1","2nd Floor",40),
("F06","D0609","B0206","ME-2","2nd Floor",40);


insert into admin(name,password) values("Admin","Admin");


insert into course values
("F06","D0609","C01","MCA-1"),
("F06","D0609","C02","MCA-2"),
("F06","D0609","C03","MCA-3"),
("F06","D0609","C04","BE-1"),
("F06","D0609","C05","BE-2"),
("F06","D0609","C06","BE-3"),
("F06","D0609","C07","BE-4"),
("F06","D0609","C08","ME-1"),
("F06","D0609","C09","ME-2");


insert into exam values
("F06","D0609","C01","E01","MAY-2022"),
("F06","D0609","C02","E01","MAY-2022"),
("F06","D0609","C03","E01","MAY-2022"),
("F06","D0609","C04","E01","MAY-2022"),
("F06","D0609","C05","E01","MAY-2022"),
("F06","D0609","C06","E01","MAY-2022"),
("F06","D0609","C07","E01","MAY-2022"),
("F06","D0609","C08","E01","MAY-2022"),
("F06","D0609","C09","E01","MAY-2022");


insert into student values
("F06","D0609","E01","C01","PRN001","Pooja Vaghadiya","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN002","Dhruvi Patel","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN003","Kinjal Cristian","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN004","Tulshi Joshi","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN005","Ayushi Rathod","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN006","Namira Ganam","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN007","Kinnari Chauhan","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN008","Deep Sharma","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN009","Yogesh Agerwal","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN010","Savan Dange","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN011","isha Vaghera","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN012","Brijesh Paghdal","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN013","Vedant Patel","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN014","Jagriti Singh","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN015","Harsh Patel","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN016","Suthar Mohammed Farhan","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN017","Keshav Kharate","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN018","Farhana Pathan","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN019","Parth Vaswani","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN020","Kanchan Daryanani","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN021","Deepshikha","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN022","Narayan Chauhan","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN023","Satya Upadhyay","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN024","Krunal Panchasra","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN025","Mayank Kumar","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN026","Utkarsh Jain","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN027","Bhavik Vaasava","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN028","Shahil Yadav","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN029","Dhruvi Panchal","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN030","Somprakash Pradhan","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN031","Antony Francis","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN032","Chirag Patel","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN033","Nidhi Mehta","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN034","Shubham Donda","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN035","Jacquline Khristi","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN036","Chirag Valmiki","mca1@gmail.com","8643785784"),
("F06","D0609","E01","C01","PRN037","Mohammad Mukhtar Wafa","mca1@gmail.com","8643785784");



