
-- Create Database Named Library--
CREATE DATABASE Library;


USE Library;



--  Create the 'Branch' table to store details of Advitha Library branches  --


CREATE TABLE Branch(
Branch_No INT PRIMARY KEY,                 -- Unique identifier for each branch --
Manager_id INT UNIQUE,                     -- Unique identifier for each Manager  --
Branch_address VARCHAR(100) Not Null,      -- Address of each Branch --
Contact_no VARCHAR (12) UNIQUE);           -- Contact Number Of each Branch-- 



INSERT INTO Branch VALUES(1, 1000, 'Advitha Library Maranalloor PO Nemom, Thiruvananthapuram' , '9646976540');
INSERT INTO Branch VALUES(2, 1001, 'Advitha Library Chadayamangalam PO Kottarakkara, Kollam' , '75897645970');
INSERT INTO Branch VALUES(3, 1002, 'Advitha Library Kuttoor PO Thiruvalla, Pathanamthitta' , '9654786538');
INSERT INTO Branch VALUES(4, 1003, 'Advitha Library Kurampala PO Pandalam, Pathanamthitta' , '8643123457');
INSERT INTO Branch VALUES(5, 1004, 'Advitha Library Karuvatta PO Cherthala, Alapuzha' , '8965436789');
INSERT INTO Branch VALUES(6, 1005, 'Advitha Library Mannar PO Chengannur, Alapuzha' , '7643908754');

SELECT * FROM Branch;


-- Create the "Employee" table that contains information about employees. --

CREATE TABLE Employee (Emp_Id INT PRIMARY KEY,               -- Unique identifiers of each Employee--
Emp_name VARCHAR(255) NOT NULL,                              -- Name of the Employees--
Position VARCHAR(30)NOT NULL ,                               -- Position Of Employees--
Salary INT Check(Salary Between 25000 and 65000),            -- Salary of Employees--
Branch_no INT,                                               -- Foreign key referencing branch_no in Branch table--
FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));



INSERT INTO Employee VALUES(100, 'Abhilash Nair','Manager', 60000, 1);
INSERT INTO Employee VALUES(101, 'Arathy Vijayan','Librarian', 41000, 1);
INSERT INTO Employee VALUES(102, 'Abhinav Ram','Childrens Librarian', 30000, 1);
INSERT INTO Employee VALUES(103, 'Sam S','Library Assistant',30000, 1);
INSERT INTO Employee VALUES(104, 'Abishek K','Library Assistant', 30000, 1);
INSERT INTO Employee VALUES(105, 'Amal R','Library Assistant', 30000, 1);

INSERT INTO Employee VALUES(106, 'Amaya Mathew','Manager', 55000, 2);
INSERT INTO Employee VALUES(107, 'Nimisha Saji','Librarian',42000, 2);
INSERT INTO Employee VALUES(108, 'Sajeev Ramachandran','Library Assistant', 33000, 2);
INSERT INTO Employee VALUES(109, 'Haroon Hamid','Library Assistant',30000, 2);

INSERT INTO Employee VALUES(110, 'Noufal Saif','Librarian', 35000, 3);
INSERT INTO Employee VALUES(111, 'Abhilash Kumar','Library Assistant', 28000, 3);
INSERT INTO Employee VALUES(112, 'Siji Sam', 'Manager',55000, 3);

INSERT INTO Employee VALUES(113, 'Abhilash N','Librarian', 35000, 4);
INSERT INTO Employee VALUES(114, 'Abhinav Samuel','Library Assistant', 27000, 4);
INSERT INTO Employee VALUES(115, 'Abdul Rahim','Manager', 55000, 4);

INSERT INTO Employee VALUES(116, 'Afsal Sam','Manager', 55000, 5);
INSERT INTO Employee VALUES(117, 'Sajna Nadir','Librarian', 38000, 5);
INSERT INTO Employee VALUES(118, 'Sajna Nadir','Library Assistant', 27000, 5);

INSERT INTO Employee VALUES(119, 'Manikandan Madav','Manager', 55000, 6);
INSERT INTO Employee VALUES(120, 'Madhurima H','Librarian', 39000, 6);
INSERT INTO Employee VALUES(121, 'Akhil Raj','Library Assistant', 28000, 6);

SELECT * FROM Employee;


-- Created Table Named 'Customer' that contains information about Customers --



CREATE TABLE Customer(Customer_id INT PRIMARY KEY,            -- Unique identifiers of each Customer--
 Customer_Name VARCHAR(35) NOT NULL,                          -- Names of Customers--
 Customer_Address VARCHAR(100)NOT NULL,                       -- Address of Customers--
 Reg_date DATE NOT NULL);                                     -- Date of their registration--

INSERT INTO Customer VALUES(10010, 'Rahul Ram', 'Rahul Bhavanam Malayinkeezhu Neomom Thiruvananthapuram', '2021-05-01');
INSERT INTO Customer VALUES(10011, 'Sumith Madhav', 'Madhaveeyam Pattazhy Chadayamangalam PO Kottarakkara ','2021-05-02');
INSERT INTO Customer VALUES(10012, 'Rajeev Ram', 'Manaveeyam Malayinkeezhu Neomom Thiruvananthapuram', '2021-05-02');
INSERT INTO Customer VALUES(10013, 'Sumith Raghav', 'Ramya Bhavan Kuttoor Thiruvalla Pathanamthitta', '2021-05-18');
INSERT INTO Customer VALUES(10014, 'Akil Maneesh', 'Malavika Bhavanam Kalliyoor Neomom Thiruvananthapuram', '2021-05-19');
INSERT INTO Customer VALUES(10015, 'Nizamudhim Babu', 'Nizar Bhavan Karuvatta PO Cherthala, Alapuzha','2021-05-25');
INSERT INTO Customer VALUES(10016, 'Saif Sadik', 'Sadi Nivas Karuvatta PO Cherthala, Alapuzha','2021-05-25');
INSERT INTO Customer VALUES(10017, 'Akhil Raj', 'Akhilam Kuttoor PO Thiruvalla, Pathanamthitta','2021-05-25');
INSERT INTO Customer VALUES(10018, 'Sonu Sam', 'Sonam Kurampala Pandalam Pathanamthitta','2021-05-25');

INSERT INTO Customer VALUES(10019, 'Praveena Pranav', 'Praveenam Chadayamangalam PO Kottarakkara', '2021-06-15');
INSERT INTO Customer VALUES(10020, 'Praveen Satheesh', 'Praveenam Kalliyoor Neomom Thiruvananthapuram', '2021-06-17');
INSERT INTO Customer VALUES(10021, 'Nivin Chacko', 'Chacko Bhavan Kuttoor PO Thiruvalla, Pathanamthitta','2021-06-27');

INSERT INTO Customer VALUES(10022, 'Sanjith S', 'Sanjith Bhavanam Mannar PO Chengannur Alapuzha','2021-07-15');
INSERT INTO Customer VALUES(10023, 'Nivin Chacko', 'Nivin Villa Maranalloor PO Nemom Thiruvananthapuram','2021-07-27');
INSERT INTO Customer VALUES(10024, 'Mohan Sam', 'Sam Villa Balaramapuram PO Nemom Thiruvananthapuram','2021-07-27');
INSERT INTO Customer VALUES(10025, 'Suraj R', 'Suraj Bhavanam Alumthara PO Venjaranmood Thiruvananthapuram ','2021-07-27');
INSERT INTO Customer VALUES(10026, 'Thanseema Salim', ' Thnsi Manzil Chadayamangalam PO Kottarakkara', '2021-07-27');

INSERT INTO Customer VALUES(10027, 'Sujaya Sasi', 'Sujeevam Kurampala Pandalam Pathanamthitta', '2021-07-28');
INSERT INTO Customer VALUES(10028, 'Athira R ', 'Avani Kurampala Pandalam Pathnamthitta', '2021-08-05');
INSERT INTO Customer VALUES(10029, 'Sumaya Sajeev', 'Sumi Bhavan Kuttoor PO Thiruvalla, Pathanamthitta','2021-08-11');
INSERT INTO Customer VALUES(10030, 'Prasanth G', 'Santheeyam Karuvatta PO Cherthala, Alapuzha','2021-08-12');
INSERT INTO Customer VALUES(10031, 'Sony Nair', 'Sony Bhavan Kalliyoor Neomom Thiruvananthapuram', '2021-08-15');
INSERT INTO Customer VALUES(10032, 'Sarath Kuttan', 'Swanthanam Chadayamangalam PO Kottarakkara', '2021-08-15');

INSERT INTO Customer VALUES(10033, 'Aleena Anil', 'Anil Nivas Kuttoor PO Thiruvalla, Pathanamthitta', '2021-08-27');
INSERT INTO Customer VALUES(10034, 'Reshma R', ' Rakhi Bhavan Kurampala Pandalam Pathanamthitta', '2021-09-15');
INSERT INTO Customer VALUES(10035, 'Revathi Ramachandran', ' Rakhi Bhavan Kurampala Pandalam Pathanamthitta', '2021-09-20');
INSERT INTO Customer VALUES(10036, 'Jasna S', 'Jasna Bhavan Kurampala Pandalam Pathanamthitta', '2021-09-25');
INSERT INTO Customer VALUES(10037, 'Samjith Sasi',' Saranalayam Malayinkeezhu Neomom Thiruvananthapuram', '2021-10-07');
INSERT INTO Customer VALUES(10038, 'AshoK Ramachandran','Ramani Bhavan Pallichal Neomom Thiruvananthapuram', '2021-10-10');
INSERT INTO Customer VALUES(10039, 'Sujith Samuel', ' Samuel Villa Chadayamangalam PO Kottarakkara', '2021-11-08');
INSERT INTO Customer VALUES(10040, 'Maneesh Saji', ' Maneesh Bhavan Kuttoor Thiruvalla Pathanamthitta ','2021-12-15');
INSERT INTO Customer VALUES(10041, 'Sujith Samuel', ' Samuel Villa Chadayamangalam PO Kottarakkara', '2022-01-01');
INSERT INTO Customer VALUES(10042, 'Ratheesh Ramu','Madhavam Mannar PO Chengannur Alapuzha', '2022-01-01');
INSERT INTO Customer VALUES(10043, 'Sowmya Sree', 'SreeNlayam Mannar PO Chengannur Alapuzha', '2022-01-10');
INSERT INTO Customer VALUES(10044, 'Sathi Sree', 'SreeNlayam Mannar PO Chengannur Alapuzha', '2022-01-15');
INSERT INTO Customer VALUES(10045, 'Praveen R', ' Praveen Bhavan Mannar PO Chengannur Alapuzha ', '2022-01-17');
INSERT INTO Customer VALUES(10046, 'Nofina N', 'Noufi Manzil Karuvatta PO Cherthala, Alapuzha','2022-02-05');
INSERT INTO Customer VALUES(10047, 'Gibin R', 'Bethlahem Karuvatta PO Cherthala, Alapuzha', '2022-02-18');
INSERT INTO Customer VALUES(10048, 'Sukanya S', ' Sukanya Bhavan Kurampala Pandalam Pathanamthitta', '2022-03-05');
INSERT INTO Customer VALUES(10049, 'Stiji R', 'Bethlahem Karuvatta PO Cherthala, Alapuzha', '2022-03-18');
INSERT INTO Customer VALUES(10050, 'Samuel Roji', 'Bethlahem Karuvatta PO Cherthala, Alapuzha','2022-04-18');

INSERT INTO Customer VALUES(10051, 'Prasad R', 'Prasadam Karuvatta PO Cherthala, Alapuzha', '2022-04-20');
INSERT INTO Customer VALUES(10052, 'Amal Shaji', 'Shaji Bhavan Mannar PO Chengannur Alapuzha', '2022-05-10');
INSERT INTO Customer VALUES(10053, 'Atul K', 'Atul Bhavan Mannar PO Chengannur Alapuzha', '2022-06-10');
INSERT INTO Customer VALUES(10054, 'Jibin S', 'Jibin House Chadayamangalam PO Kottarakkara Kollam', '2022-06-15');
INSERT INTO Customer VALUES(10055, 'Sachin T', 'Sachin House Chadayamangalam PO Kottarakkara Kollam', '2022-06-15');
INSERT INTO Customer VALUES(10056, 'Rohit R', 'Shaji Bhavan Chadayamangalam PO Kottarakkara Kollam ','2022-06-17');
INSERT INTO Customer VALUES(10057, 'Bijeesh Babu', 'Vijayam Mannar PO Chengannur Alapuzha', '2022-07-15');
INSERT INTO Customer VALUES(10058, 'Prajith P', 'Pratheeksha Kuttoor Thiruvalla Pathanamthitta', '2022-07-18');
INSERT INTO Customer VALUES(10059, 'Praveen Satheesh', 'Prarthana Kuttoor Thiruvalla Pathanamthitta', '2022-07-19');

INSERT INTO Customer VALUES(10060, 'Arathi R', 'Avani Kurampala Pandalam Pathanamthitta', '2022-07-20');
INSERT INTO Customer VALUES(10061, 'Sudheesh Sajeev', 'Sajeev Nilayam Mannar PO Chengannur Alapuzha', '2022-07-22');
INSERT INTO Customer VALUES(10062, 'Samson S ', 'Samson Villa Kothanalloor PO Voikom Kottayam ', '2022-07-26');
INSERT INTO Customer VALUES(10063, 'Akhil K', 'Akhilom Chadayamangalam PO Kottarakkara Kollam', '2022-09-26');
INSERT INTO Customer VALUES(10064, 'Sam H', 'Sam Villa Chadayamangalam PO Kottarakkara Kollam', '2023-09-29');
INSERT INTO Customer VALUES(10065, 'Manaf Rafi', ' Rafi Manzil Kuttoor Thiruvalla Pathanamthitta', '2022-10-10');
INSERT INTO Customer VALUES(10066, 'Rahul R', ' Rahul Bhavan Chadayamangalam Kottarakkara Kollam', '2022-10-25');
INSERT INTO Customer VALUES(10067, 'Aravind D', 'Aravind House Chadayamangalam Kottarakkara Kollam', '2022-11-25');
INSERT INTO Customer VALUES(10068, 'Rahu Rajeev', 'Rajeevam House Chadayamangalam Kottarakkara Kollam ','2022-11-27');
INSERT INTO Customer VALUES(10069, 'Jai J', 'Jayam House Chadayamangalam Kottarakkara Kollam', '2022-11-30');
INSERT INTO Customer VALUES(10070, 'Adi dev', 'Advaitham Voikom PO Voikom  Kottayam', '2022-12-10');
INSERT INTO Customer VALUES(10071, 'Saji Reji ', 'Reji Bhavan Karuvatta Cherthala, Alapuzha', '2023-01-01');
INSERT INTO Customer VALUES(10072, 'Susan Sam', ' Sam House Kuttoor Thiruvalla Pathanamthitta', '2023-01-01');
INSERT INTO Customer VALUES(10073, 'Rahul Ravi ', 'Ravi Nilayam Mannar PO Chengannur Alapuzha', '2023-01-01');


INSERT INTO Customer VALUES(10074, 'Adwaith R ', 'Adwaitham Maranalloor PO Nemom Thiruvananthapuram', '2023-01-05');
INSERT INTO Customer VALUES(10075, 'Ashwathi R ', 'Adwaitham Maranalloor PO Nemom Thiruvananthapuram', '2023-01-15');
INSERT INTO Customer VALUES(10076, 'Abhinav R ', 'Adwaitham Maranalloor PO Nemom Thiruvananthapuram', '2023-01-18');
INSERT INTO Customer VALUES(10077, ' Sujaya Rajeev','Adwaitham Maranalloor PO Nemom Thiruvananthapuram','2023-02-15');
INSERT INTO Customer VALUES(10078, 'Rajeev Ramachandran ', 'Adwaitham Maranalloor PO Nemom Thiruvananthapuram', '2023-02-15');
INSERT INTO Customer VALUES(10079, 'Ashwathi H', 'Sreenilayam Maranalloor PO Nemom Thiruvananthapuram', '2023-02-15');
INSERT INTO Customer VALUES(10080, 'Abhishek H', 'Sreenilayam Maranalloor PO Nemom Thiruvananthapuram', '2023-02-20');
INSERT INTO Customer VALUES(10081, 'Ramya R', 'Prasadam Karuvatta PO Cherthala, Alapuzha', '2023-02-25');
INSERT INTO Customer VALUES(10082, 'Abhinaya R','Prasadam Karuvatta PO Cherthala, Alapuzha', '2023-02-27');
INSERT INTO Customer VALUES(10083, 'Aradya R', 'Prasadam Karuvatta PO Cherthala, Alapuzha', '2023-03-05');
INSERT INTO Customer VALUES(10084, 'sandya P', ' Sandya Bhavan Thiruvananthapuram', '2023-03-15');
INSERT INTO Customer VALUES(10085, 'Somya Sasi', ' Somya Bhavanam Nooranad Alapuzha', '2023-04-07');
INSERT INTO Customer VALUES(10086, 'Liji Mathew ', 'Mathew Bhavan Mannar PO Chengannur, Alapuzha', '2023-05-07');
INSERT INTO Customer VALUES(10087, 'Parvathi G', ' Parvathi Bhavan Mannar PO Chengannur Alapuzha', '2023-05-17');
INSERT INTO Customer VALUES(10088, 'Saimon Saji', ' Saji Bhavan Ranni Pathanamthitta', '2023-06-07');
INSERT INTO Customer VALUES(10089, 'Mahesh M', ' Karuvatta PO Cherthala, Alapuzha', '2023-06-17');
INSERT INTO Customer VALUES(10090, 'Vignesh Viswam ', 'Viswam Nivas Padanilam Alapuzha', '2023-06-21');
INSERT INTO Customer VALUES(10091, 'Parvathi P', ' Kailasam Kurampala Pandalam Pathanamthitta', '2023-06-25');

INSERT INTO Customer VALUES(10092, 'Adeena Anil', ' Anilam Padanilam Alapuzha', '2023-06-25');
INSERT INTO Customer VALUES(10093, 'Thara Ram', ' Kailasam Adoor  Pathanamthitta', '2023-06-25');
INSERT INTO Customer VALUES(10094, 'Gokul Krishnan', 'Gokulam Chadayamangalam PO Kottarakkara Kollam ', '2023-07-05');
INSERT INTO Customer VALUES(10095, 'Vivek Krishnan', 'Vivek House Cherthala Alapuzha ', '2023-07-15');
INSERT INTO Customer VALUES(10096, 'Drishya Rakhuram', 'Drishya House Cherthala Alapuzha ', '2023-07-25');
INSERT INTO Customer VALUES(10097, 'Rahul J', 'Rahul Bhavan Ranni Pathanamthitta ', '2023-07-25');

select * From Customer;




-- Create a table named 'IssueStatus' that indicates information about customers who have issued books --


CREATE TABLE IssueStatus (
Issue_Id INT PRIMARY KEY,                                     -- Unique identifier for issued books --
Issued_Cust INT,                                              -- Customer ID of the customer who issued the book --
Issued_book_name VARCHAR(50),                                 -- Name of the book that was issued --
Issue_date DATE,                                              -- Date on which the book was issued --
ISBN_book VARCHAR(300),                                       -- ISBN Number of the issued book --
FOREIGN KEY (Issued_Cust) REFERENCES Customer(customer_id),   -- Reference to the Customer table --
FOREIGN KEY (ISBN_book) REFERENCES Books(ISBN)                -- Reference to the Books table --
);



INSERT INTO IssueStatus VALUES(001, 10010, 'Khasakkinte Ithihasam','2021-05-01','9862567378272');
INSERT INTO IssueStatus VALUES(002, 10011, 'Mayyazhippuzhayude Theerangalil','2021-05-02','9866356472737');
INSERT INTO IssueStatus VALUES(003, 10012, 'Khasakkinte Ithihasam','2021-05-03','9862567378272');
INSERT INTO IssueStatus VALUES(004, 10013, 'ROYAL','2021-05-19','9781529040913');
INSERT INTO IssueStatus VALUES(005, 10015, 'BECOMING','2021-05-25','9789354826771');
INSERT INTO IssueStatus VALUES(006, 10017, 'Khasakkinte Ithihasam','2021-05-26','9862567378272');
INSERT INTO IssueStatus VALUES(007, 10012, 'VAIKOM SATYAGRAHAM','2021-05-26','9142536637746');
INSERT INTO IssueStatus VALUES(008, 10018, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-05-26','9789354824743');
INSERT INTO IssueStatus VALUES(009, 10019, 'KAAL NOOTTANDU','2021-06-16','9142536637746');
INSERT INTO IssueStatus VALUES(010, 10020, 'Ente Katha','2021-06-17','9762667374825');

INSERT INTO IssueStatus VALUES(011, 10021, 'Ente Katha','2021-06-27','9762667374825');
INSERT INTO IssueStatus VALUES(012, 10022, 'Aadu Jeevitham','2021-07-15','9736472847672');
INSERT INTO IssueStatus VALUES(013, 10023, 'HARMONY AMIDST DISHARMONY','2021-07-27','9789388302227');
INSERT INTO IssueStatus VALUES(014, 10024, 'HARMONY AMIDST DISHARMONY','2021-06-27','9789388302227');
INSERT INTO IssueStatus VALUES(015, 10026, 'BECOMING','2021-06-28','9789354826771');

INSERT INTO IssueStatus VALUES(016, 10027, 'CHARITHRAVARTHANAM','2021-07-28','9789354326554');
INSERT INTO IssueStatus VALUES(017, 10028, 'BECOMING','2021-08-05','9789354826771');
INSERT INTO IssueStatus VALUES(018, 10029, 'KAAL NOOTTANDU','2021-08-11','9142536637746');
INSERT INTO IssueStatus VALUES(019, 10030, 'Ente Katha','2021-08-12','9762667374825');
INSERT INTO IssueStatus VALUES(020, 10032, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-08-15','9789354824743');


INSERT INTO IssueStatus VALUES(021, 10033, 'Randamoozham','2021-08-27','9736472647627');
INSERT INTO IssueStatus VALUES(022, 10034, 'Pathummayude Aadu','2021-08-15','9736472847672');
INSERT INTO IssueStatus VALUES(023, 10035, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-09-21','9789354824743');
INSERT INTO IssueStatus VALUES(024, 10036, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-09-25','9789354824743');
INSERT INTO IssueStatus VALUES(025, 10037, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-10-07','9789354824743');

INSERT INTO IssueStatus VALUES(026, 10038, 'VAIKOM SATYAGRAHAM','2021-10-10','9142536637746');
INSERT INTO IssueStatus VALUES(027, 10039, 'KAAL NOOTTANDU','2021-11-08','9142536637746');
INSERT INTO IssueStatus VALUES(028, 10040, 'VAIKOM SATYAGRAHAM','2021-12-15','9142536637746');
INSERT INTO IssueStatus VALUES(029, 10041, 'Randamoozham','2022-01-01','9736472647627');
INSERT INTO IssueStatus VALUES(030, 10042, 'KAAL NOOTTANDU','2022-01-01','9142536637746');
INSERT INTO IssueStatus VALUES(031, 10043, 'REASONS TO STAY ALIVE','2022-01-11','9781782116820');
INSERT INTO IssueStatus VALUES(032, 10044, 'MULLAPPOONIRAMULLA PAKALUKAL','2022-01-15','9788126450800');
INSERT INTO IssueStatus VALUES(033, 10045, 'SAPHALAMEEYATHRA','2022-01-17','9788182677173');
INSERT INTO IssueStatus VALUES(034, 10046, 'HUMPIYILE PORIVEYIL','2022-02-06','9789357322522');
INSERT INTO IssueStatus VALUES(035, 10047, 'KARUPPUM VELUPPUM','2022-02-19','9788126443680');
INSERT INTO IssueStatus VALUES(036, 10048, 'PARAKKUM STHREE','2022-03-05','9789357324335');
INSERT INTO IssueStatus VALUES(037, 10049, 'ORU AFRICAN YATHRA','2022-03-18','9788126414390');
INSERT INTO IssueStatus VALUES(038, 10050, 'ORU AFRICAN YATHRA','2022-04-18','9788126414390');
INSERT INTO IssueStatus VALUES(039, 10051, 'PARAKKUM STHREE','2022-04-18','9789357324335');
INSERT INTO IssueStatus VALUES(040, 10052, 'ORU AFRICAN YATHRA','2022-05-10','9788126414390');
INSERT INTO IssueStatus VALUES(041, 10053, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-06-10','9789352640966');
INSERT INTO IssueStatus VALUES(042, 10054, 'Khasakkinte Ithihasam','2022-06-15','9862567378272');
INSERT INTO IssueStatus VALUES(043, 10055, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-06-15','9789352640966');
INSERT INTO IssueStatus VALUES(044, 10056, 'Khasakkinte Ithihasam','2022-06-17','9862567378272');
INSERT INTO IssueStatus VALUES(045, 10057, 'ORU AFRICAN YATHRA','2022-07-16','9788126414390');

INSERT INTO IssueStatus VALUES(046, 10058, 'ORU AFRICAN YATHRA','2022-07-18','9788126414390');
INSERT INTO IssueStatus VALUES(047, 10059, 'KARUPPUM VELUPPUM','2022-07-19','9788126443680');
INSERT INTO IssueStatus VALUES(048, 10060, 'ORU AFRICAN YATHRA','2022-07-20','9788126414390');
INSERT INTO IssueStatus VALUES(049, 10061, 'KARUPPUM VELUPPUM','2022-07-22','9788126443680');
INSERT INTO IssueStatus VALUES(050, 10062, 'ORU AFRICAN YATHRA','2022-07-26','9788126414390');
INSERT INTO IssueStatus VALUES(051, 10063, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-09-26','9789352640966');
INSERT INTO IssueStatus VALUES(052, 10064, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-09-29','9789352640966');
INSERT INTO IssueStatus VALUES(053, 10065, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-10-10','9789352640966');
INSERT INTO IssueStatus VALUES(054, 10066, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-10-25','9789352640966');
INSERT INTO IssueStatus VALUES(055, 10067, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-11-25','9789352640966');
INSERT INTO IssueStatus VALUES(056, 10068, 'Randamoozham','2022-11-27','9736472647627');
INSERT INTO IssueStatus VALUES(057, 10069, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-11-30','9789352640966');
INSERT INTO IssueStatus VALUES(058, 10070, 'Randamoozham','2022-12-10','9736472647627');
INSERT INTO IssueStatus VALUES(059, 10071, 'ROYAL','2023-01-01','9781529040913');
INSERT INTO IssueStatus VALUES(060, 10072, 'Randamoozham','2023-01-01','9736472647627');
INSERT INTO IssueStatus VALUES(061, 10073, 'ROYAL','2023-01-01','9781529040913');

INSERT INTO IssueStatus VALUES(062, 10074, 'Ente Katha','2023-01-05','9762667374825');
INSERT INTO IssueStatus VALUES(063, 10075, 'Randamoozham','2023-01-15','9736472647627');
INSERT INTO IssueStatus VALUES(064, 10076, 'BECOMING','2023-01-19','9789354826771');
INSERT INTO IssueStatus VALUES(065, 10077, 'ROYAL','2023-02-15','9781529040913');
INSERT INTO IssueStatus VALUES(066, 10078, 'MACHUPICHU','2023-02-15','9789357324809');
INSERT INTO IssueStatus VALUES(067, 10079, 'VARIKKUZHI','2023-02-16','9788122613308');
INSERT INTO IssueStatus VALUES(068, 10080, 'VARIKKUZHI','2023-02-20','9788122613308');
INSERT INTO IssueStatus VALUES(069, 10081, 'VARIKKUZHI','2023-02-25','9788122613308');
INSERT INTO IssueStatus VALUES(070, 10082, 'VARIKKUZHI','2023-02-27','9788122613308');
INSERT INTO IssueStatus VALUES(071, 10083, 'VARIKKUZHI','2023-03-05','9788122613308');

INSERT INTO IssueStatus VALUES(072, 10084, 'STEVE JOBS','2023-03-15','9789395281133');
INSERT INTO IssueStatus VALUES(073, 10085, 'VARIKKUZHI','2023-04-07','9788122613308');
INSERT INTO IssueStatus VALUES(074, 10086, 'STEVE JOBS','2023-05-07','9789395281133');
INSERT INTO IssueStatus VALUES(075, 10087, 'VARIKKUZHI','2023-05-17','9788122613308');
INSERT INTO IssueStatus VALUES(076, 10088, 'STEVE JOBS','2023-06-07','9789395281133');

INSERT INTO IssueStatus VALUES(080, 10089, 'SAPHALAMEEYATHRA','2023-06-17','9788182677173');
INSERT INTO IssueStatus VALUES(081, 10090, 'CHARITHRAVARTHANAM','2023-06-17','9789354326554');
INSERT INTO IssueStatus VALUES(082, 10091, 'PRIESTS AND POLITICIANS THE MAFIA OF THE SOU','2023-06-22','9788176210461');
INSERT INTO IssueStatus VALUES(083, 10092, 'MULLAPPOONIRAMULLA PAKALUKAL','2023-06-26','9788126450800');


SELECT * FROM IssueStatus;




-- Create Table Named 'ReturnStatus' that indicates information about customers who have returned books--


CREATE TABLE ReturnStatus (
Return_Id INT PRIMARY KEY,                       -- Unique identifier for returned books --
Return_cust INT,                                 -- Customer ID of the customer who returned the book --
Return_book_name VARCHAR(50),                    -- Name of the book that was returned --
Return_date DATE,                                -- Date on which the book was returned --
Isbn_book2 VARCHAR(300),                         -- ISBN Number of the book that was returned --
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)  -- Reference to the Books table --
);




INSERT INTO ReturnStatus VALUES(500, 10010, 'Khasakkinte Ithihasam', '2021-06-27','9862567378272');
INSERT INTO ReturnStatus VALUES(501, 10011, 'Mayyazhippuzhayude Theerangalil','2021-06-02','9866356472737');
INSERT INTO ReturnStatus VALUES(502, 10012, 'Khasakkinte Ithihasam','2021-06-03','9862567378272');
INSERT INTO ReturnStatus VALUES(503, 10013, 'ROYAL','2021-06-19','9781529040913');
INSERT INTO ReturnStatus VALUES(504, 10015, 'BECOMING','2021-06-25','9789354826771');
INSERT INTO ReturnStatus VALUES(505, 10017, 'Khasakkinte Ithihasam','2021-06-26','9862567378272');
INSERT INTO ReturnStatus VALUES(506, 10012, 'VAIKOM SATYAGRAHAM','2021-06-26','9142536637746');
INSERT INTO ReturnStatus VALUES(507, 10018, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-06-26','9789354824743');
INSERT INTO ReturnStatus VALUES(508, 10019, 'KAAL NOOTTANDU','2021-07-16','9142536637746');
INSERT INTO ReturnStatus VALUES(509, 10020, 'Ente Katha','2021-07-17','9762667374825');
INSERT INTO ReturnStatus VALUES(510, 10021, 'Ente Katha','2021-07-27','9762667374825');
INSERT INTO ReturnStatus VALUES(511, 10023, 'HARMONY AMIDST DISHARMONY','2021-08-27','9789388302227');
INSERT INTO ReturnStatus VALUES(512, 10026, 'BECOMING','2021-07-28','9789354826771');
INSERT INTO ReturnStatus VALUES(513, 10022, 'Aadu Jeevitham','2021-08-15','9736472847672');
INSERT INTO ReturnStatus VALUES(514, 10024, 'HARMONY AMIDST DISHARMONY','2021-08-27','9789388302227');

INSERT INTO ReturnStatus VALUES(515, 10027, 'CHARITHRAVARTHANAM','2021-09-28','9789354326554');
INSERT INTO ReturnStatus VALUES(516, 10028, 'BECOMING','2021-09-05','9789354826771');
INSERT INTO ReturnStatus VALUES(517, 10030, 'Ente Katha','2021-09-12','9762667374825');
INSERT INTO ReturnStatus VALUES(518, 10032, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-09-15','9789354824743');
INSERT INTO ReturnStatus VALUES(519, 10029, 'KAAL NOOTTANDU','2021-09-11',9142536637746);

INSERT INTO ReturnStatus VALUES(520, 10033, 'Randamoozham','2021-09-27','9736472647627');
INSERT INTO ReturnStatus VALUES(521, 10034, 'Pathummayude Aadu','2021-09-15','9736472847672');
INSERT INTO ReturnStatus VALUES(522, 10035, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-10-21','9789354824743');
INSERT INTO ReturnStatus VALUES(523, 10037, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-10-20','9789354824743');
INSERT INTO ReturnStatus VALUES(524, 10036, 'MUNPE PARAKKUNNA PAKSHIKAL','2021-10-30','9789354824743');


INSERT INTO ReturnStatus VALUES(525, 10039, 'KAAL NOOTTANDU','2021-12-08','9142536637746');
INSERT INTO ReturnStatus VALUES(526, 10040, 'VAIKOM SATYAGRAHAM','2022-01-15','9142536637746');
INSERT INTO ReturnStatus VALUES(527, 10041, 'Randamoozham','2022-02-05','9736472647627');
INSERT INTO ReturnStatus VALUES(528, 10042, 'KAAL NOOTTANDU','2022-02-06','9142536637746');
INSERT INTO ReturnStatus VALUES(529, 10043, 'REASONS TO STAY ALIVE','2022-02-11','9781782116820');
INSERT INTO ReturnStatus VALUES(530, 10044, 'MULLAPPOONIRAMULLA PAKALUKAL','2022-02-15','9788126450800');
INSERT INTO ReturnStatus VALUES(531, 10045, 'SAPHALAMEEYATHRA','2022-02-17','9788182677173');
INSERT INTO ReturnStatus VALUES(532, 10046, 'HUMPIYILE PORIVEYIL','2022-03-06','9789357322522');
INSERT INTO ReturnStatus VALUES(533, 10047, 'KARUPPUM VELUPPUM','2022-03-19','9788126443680');
INSERT INTO ReturnStatus VALUES(534, 10048, 'PARAKKUM STHREE','2022-04-05','9789357324335');
INSERT INTO ReturnStatus VALUES(535, 10049, 'ORU AFRICAN YATHRA','2022-04-18','9788126414390');
INSERT INTO ReturnStatus VALUES(536, 10050, 'ORU AFRICAN YATHRA','2022-05-18','9788126414390');
INSERT INTO ReturnStatus VALUES(537, 10051, 'PARAKKUM STHREE','2022-05-18','9789357324335');
INSERT INTO ReturnStatus VALUES(538, 10052, 'ORU AFRICAN YATHRA','2022-06-10','9788126414390');
INSERT INTO ReturnStatus VALUES(539, 10053, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-07-10','9789352640966');
INSERT INTO ReturnStatus VALUES(540, 10054, 'Khasakkinte Ithihasam','2022-07-15','9862567378272');

INSERT INTO ReturnStatus VALUES(541, 10055, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-07-15','9789352640966');
INSERT INTO ReturnStatus VALUES(542, 10056, 'Khasakkinte Ithihasam','2022-07-17','9862567378272');
INSERT INTO ReturnStatus VALUES(543, 10057, 'ORU AFRICAN YATHRA','2022-08-16','9788126414390');
INSERT INTO ReturnStatus VALUES(544, 10058, 'ORU AFRICAN YATHRA','2022-08-18','9788126414390');
INSERT INTO ReturnStatus VALUES(545, 10059, 'KARUPPUM VELUPPUM','2022-08-19','9788126443680');
INSERT INTO ReturnStatus VALUES(546, 10060, 'ORU AFRICAN YATHRA','2022-08-20','9788126414390');
INSERT INTO ReturnStatus VALUES(547, 10061, 'KARUPPUM VELUPPUM','2022-08-22','9788126443680');
INSERT INTO ReturnStatus VALUES(548, 10062, 'ORU AFRICAN YATHRA','2022-08-26','9788126414390');
INSERT INTO ReturnStatus VALUES(549, 10063, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-10-26','9789352640966');
INSERT INTO ReturnStatus VALUES(550, 10064, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-10-29','9789352640966');
INSERT INTO ReturnStatus VALUES(551, 10065, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-11-10','9789352640966');
INSERT INTO ReturnStatus VALUES(552, 10066, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-11-25','9789352640966');
INSERT INTO ReturnStatus VALUES(553, 10067, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-12-25','9789352640966');
INSERT INTO ReturnStatus VALUES(554, 10068, 'Randamoozham','2022-12-27','9736472647627');
INSERT INTO ReturnStatus VALUES(555, 10069, 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN','2022-12-30','9789352640966');
INSERT INTO ReturnStatus VALUES(556, 10070, 'Randamoozham','2022-01-10','9736472647627');
INSERT INTO ReturnStatus VALUES(557, 10071, 'ROYAL','2023-02-01','9781529040913');
INSERT INTO ReturnStatus VALUES(558, 10072, 'Randamoozham','2023-02-01','9736472647627');
INSERT INTO ReturnStatus VALUES(559, 10073, 'ROYAL','2023-02-01','9781529040913');

INSERT INTO ReturnStatus VALUES(560, 10074, 'Ente Katha','2023-02-05','9762667374825');
INSERT INTO ReturnStatus VALUES(561, 10075, 'Randamoozham','2023-02-15','9736472647627');
INSERT INTO ReturnStatus VALUES(562, 10076, 'BECOMING','2023-02-19','9789354826771');
INSERT INTO ReturnStatus VALUES(563, 10077, 'ROYAL','2023-03-15','9781529040913');
INSERT INTO ReturnStatus VALUES(564, 10078, 'MACHUPICHU','2023-03-15','9789357324809');
INSERT INTO ReturnStatus VALUES(565, 10079, 'VARIKKUZHI','2023-03-16','9788122613308');
INSERT INTO ReturnStatus VALUES(566, 10080, 'VARIKKUZHI','2023-03-20','9788122613308');
INSERT INTO ReturnStatus VALUES(567, 10081, 'VARIKKUZHI','2023-03-25','9788122613308');
INSERT INTO ReturnStatus VALUES(568, 10082, 'VARIKKUZHI','2023-03-27','9788122613308');
INSERT INTO ReturnStatus VALUES(569, 10083, 'VARIKKUZHI','2023-04-05','9788122613308');

INSERT INTO ReturnStatus VALUES(570, 10084, 'STEVE JOBS','2023-04-15','9789395281133');
INSERT INTO ReturnStatus VALUES(571, 10085, 'VARIKKUZHI','2023-05-07','9788122613308');
INSERT INTO ReturnStatus VALUES(572, 10086, 'STEVE JOBS','2023-06-07','9789395281133');
INSERT INTO ReturnStatus VALUES(573, 10087, 'VARIKKUZHI','2023-06-17','9788122613308');
INSERT INTO ReturnStatus VALUES(574, 10088, 'STEVE JOBS','2023-007-07','9789395281133');

INSERT INTO ReturnStatus VALUES(575, 10089, 'SAPHALAMEEYATHRA','2023-07-17','9788182677173');
INSERT INTO ReturnStatus VALUES(576, 10090, 'CHARITHRAVARTHANAM','2023-08-17','9789354326554');
INSERT INTO ReturnStatus VALUES(577, 10091, 'PRIESTS AND POLITICIANS THE MAFIA OF THE SOU','2023-08-22','9788176210461');
INSERT INTO ReturnStatus VALUES(578, 10092, 'MULLAPPOONIRAMULLA PAKALUKAL','2023-09-26','9788126450800');





-- Create a table named 'Books' that represents the details of all books --

CREATE TABLE Books (
ISBN VARCHAR(300) PRIMARY KEY,    -- ISBN Number of each book --
Book_title VARCHAR(50),           -- Title of each book --
Category VARCHAR(30),             -- Category of each book --
Rental_Price DECIMAL(6,2),        -- Rental price of each book --
Status VARCHAR(10),               -- Availability status of each book --
Author VARCHAR(50),               -- Authors of each book --
Publisher VARCHAR(50)             -- Publisher of each book --
);


INSERT INTO Books VALUES('9736472647627', 'Randamoozham', 'Mythology', 52.5, 'YES', 'MT Vasudevan Nair', 'Current Books');
INSERT INTO Books VALUES('9736472847672', 'Aadu Jeevitham', 'Biography', 35.5, 'YES', 'Benyamin', 'H&C Publishing House ');
INSERT INTO Books VALUES('9862567378272', 'Khasakkinte Ithihasam', 'Biography', 35.5, 'YES', 'Benyamin', 'H&C Publishing House ');
INSERT INTO Books VALUES('9866356472737', 'Mayyazhippuzhayude Theerangalil', 'Fiction',100 , 'YES', 'M. Mukundan', 'DC Books');
INSERT INTO Books VALUES('9362647727827', 'Pathummayude Aadu', 'Comic', 35.5, 'YES', 'Vaikom Muhammad Basheer', 'DC Books');
INSERT INTO Books VALUES('9762667374825', 'Ente Katha', 'Autobiography', 35.5, 'YES', 'Kamala Suraiyya', 'DC Books');
INSERT INTO Books VALUES('9142536637746', 'VAIKOM SATYAGRAHAM', 'History', 100, 'YES', 'PAZHA. ATHIYAMAN', 'DC Books');
INSERT INTO Books VALUES('9789354820687', 'KAAL NOOTTANDU', 'History', 85.5, 'YES', 'CHERIAN PHILIP', 'DC Books');
INSERT INTO Books VALUES('9789354326554', 'CHARITHRAVARTHANAM', 'History', 85.5, 'YES', 'ROMILA THAPAR', 'DC Books');
INSERT INTO Books VALUES('9781529040913', 'ROYAL', 'History', 85.5, 'YES', 'DANIELLE STEEL', 'DC Books');

INSERT INTO Books VALUES('9789354326557', 'CHARITHRAVARTHANAM', 'History', 85.5, 'YES', 'ROMILA THAPAR', 'DC Books');
INSERT INTO Books VALUES('9789388302227', 'HARMONY AMIDST DISHARMONY', 'History', 100, 'YES', 'FALI SAM NARIMAN', 'DC Books');
INSERT INTO Books VALUES('9789354826771', 'BECOMING', 'Autobiography', 120, 'YES', 'MICHELLE OBAMA', 'DC Books');
INSERT INTO Books VALUES('9789354824743', 'MUNPE PARAKKUNNA PAKSHIKAL', 'Novel', 155, 'YES', 'Radhakrishnan C', 'HiTech Books');
INSERT INTO Books VALUES('9789357322522', 'HUMPIYILE PORIVEYIL', 'Travelogue', 150, 'YES', 'RENUKUMAR M. R', 'DC Books');
INSERT INTO Books VALUES('9788126414390', 'ORU AFRICAN YATHRA', 'Travelogue', 155, 'YES', 'ZACHARIA', 'DC Books');
INSERT INTO Books VALUES('9781782116820', 'REASONS TO STAY ALIVE', 'Essays', 155, 'YES', 'HAIG, MATT', 'DC Books');
INSERT INTO Books VALUES('9789357324335', 'PARAKKUM STHREE', 'Short Stories', 100, 'YES', 'ZACHARIA', 'DC Books');
INSERT INTO Books VALUES('9789357323611', 'UTHAMAGEETHAM', 'Poetry', 35.5, 'YES', 'DESAM N K', 'DC Books');
INSERT INTO Books VALUES('9788182677173', 'SAPHALAMEEYATHRA', 'Poetry', 30, 'YES', 'NARAYANAN NAMBOODRI KAKKAD', 'MATHRUBHUMI BOOKS');
INSERT INTO Books VALUES('9788126450800', 'MULLAPPOONIRAMULLA PAKALUKAL', 'Novel', 85, 'YES', 'BENYAMIN', 'DC Books');

INSERT INTO Books VALUES('9789357324809', 'MACHUPICHU', 'Childrens Books', 35.5, 'YES', 'MINI PC', 'DC Books');
INSERT INTO Books VALUES('9788126443680', 'KARUPPUM VELUPPUM', 'Humour', 50, 'YES', 'DC KIZHAKEMURI', 'DC Books');
INSERT INTO Books VALUES('9789352640966', 'MUSIC, MASTI, MODERNITY THE CINEMA OF NASIR HUSAIN', 'Cinema', 75, 'YES', 'AKSHAY MANWANI', 'HARPER COLLINS');
INSERT INTO Books VALUES('9788176210461', 'PRIESTS AND POLITICIANS THE MAFIA OF THE SOU', 'Philosophy', 80, 'YES', 'OSHO', 'FULL CIRCLE');
INSERT INTO Books VALUES('9788122613308', 'VARIKKUZHI', 'Short Stories', 80, 'YES', 'M T VASUDEVAN NAIR', 'TRISSUR CURRENT BOOKS');
INSERT INTO Books VALUES('9789395281133', 'STEVE JOBS', 'Biography', 80, 'YES', 'WALTER ISAACSON', 'OLIVE');
INSERT INTO Books VALUES('9789354826702', 'THARAKANS GRANDHAVARI', 'Novel', 80, 'NO', 'BENYAMIN', 'DC Books');



Select * From Books;




-- 1. Retrieve the book title, category, and rental price of all available books.--

SELECT Book_title, Category, Rental_Price FROM Books WHERE STATUS = 'YES';


-- 2.  List the employee names and their respective salaries in descending order of salary.--

SELECT Emp_Name, Salary FROM Employee ORDER BY Salary DESC;



-- 3. Retrieve the book titles and the corresponding customers who have issued those books.--


SELECT Books.Book_title, IssueStatus.Issued_Cust FROM Books JOIN IssueStatus ON Books.ISBN = IssueStatus.ISBN_book;



-- 4. Display the total count of books in each category--

SELECT Category, COUNT(*) AS Total_Books_On_Each_Category FROM Books GROUP BY Category;


-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.--

SELECT Emp_Name, Position From Employee Where Salary > 50000;


-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet--


SELECT Customer_name FROM Customer WHERE Reg_date < '2022-01-01' AND Customer_Id NOT IN (SELECT DISTINCT Issued_cust FROM IssueStatus);


-- 7. Display the branch numbers and the total count of employees in each branch.--


SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.--

SELECT  Customer_name FROM Customer JOIN IssueStatus  ON Customer_Id = Issued_cust
WHERE YEAR(Issue_date) = 2023 AND MONTH(Issue_date) = 6;


-- 9. Retrieve book_title from book table containing history. --

Select Book_title  From Books  WHERE Category LIKE  '%History%';

-- 10 .Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.--

SELECT Branch_no, COUNT(*) AS Employee_Count FROM Employee GROUP BY Branch_no HAVING Employee_Count > 5;
