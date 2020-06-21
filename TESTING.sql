USE covid19;
-- CREATING TABLE 'TESTING' WITH PRIMARY KEY 'TID' (TESTING ID)
CREATE TABLE Testing(
TID INT NOT NULL AUTO_INCREMENT,
LabName VARCHAR(255),
LabType VARCHAR(45),
T_Address VARCHAR(255),
T_City VARCHAR(45),
T_State VARCHAR(45),
SampleDate DATETIME,
Result CHAR(1),
PRIMARY KEY (TID));

-- STARTING 'PID' VALUE WITH THE VALUE '78565'
ALTER TABLE Testing AUTO_INCREMENT = 78565;

-- ADD COLUMN FOR FOREIGN KEY 'PID' FROM Patients TABLE
ALTER TABLE Testing ADD COLUMN PID INT;
-- ADDING 'PID' AS FOREIGN KEY
ALTER TABLE Testing ADD FOREIGN KEY (PID) REFERENCES PatientS(PID);

DROP TABLE Testing;

-- INSERTING VALUES INTO 'TESTING'
INSERT INTO Testing (LabName, LabType, T_Address, T_City, T_State, SampleDate, Result, PID) 
VALUES
('ICMR-National Institute of Epidemiology, Chennai','Government Laboratory', 'ICMR-National Institute of Epidemiology, Second Main Road,Tamil Nadu Housing Board, Ayapakkam, Near Ambattur','Chennai', 'Tamil Nadu', '2020-03-22 09.45.00' ,'P' ,5691),

('Sahyadri Speciality Labs, Pune','Private Laboratory','Sahyadri Speciality Labs, Plot No. 54, S.No. 80-90, Lokmanya Colony, Kothrud, Pune-411038, Maharashtra, India','Pune','Maharashtra','2020-03-21 18.00.00','P',5689),

('Tata Memorial Centre Diagnostic Services, Tata Memorial Hospital, Mumbai','	Private Laboratory','	Tata Memorial Centre Diagnostic Services, Tata Memorial Hospital, Dept. of Microbiology & Serology, 6th Floor, Anexe Building, Tata Memorial Hospital, Dr. E. Borges Road, Parel, Mumbai 400012',  'Mumbai', 'Maharashtra','2020-03-23 18.00.00', 'P', 5702),

('Hassan Institute of Medical Sciences, Hassan','Government Laboratory','	Hassan Institute of Medical Sciences, Shri panchamukhi medicals and clinic, opp. govt high school, Hassan, Karnataka 573201','Hassan','Karnataka','2020-03-19 18.00.00', 'N', 5693),

('Mysore Medical College & Research Institute, Mysore','Government Laboratory','Mysore Medical College & Research Institute, Irwin Road,Railway Staion, Mysuru, Karnataka 570001', 'Mysuru', 'Karnataka','2020-03-19 18.00.00', 'P', 5699),

('Sri Venkateswara Institute of Medical Sciences, Tirupati	','	Government Laboratory','Sri Venkateswara Institute of Medical Sciences, Tirupati, Andhra Pradesh Alipiri Rd, Sri Padmavati Mahila Visvavidyalayam, , Andhra Pradesh 517507','Anantapur','Andhra Pradesh','2020-03-15 19.00.00', 'P', 5703),

('Rangaraya Medical College, Kakinada','Government Laboratory','Rangaraya Medical College, Kakinada Pithampuram Road, Kakinada, Andhra Pradesh 533001','Kakinada	','Andhra Pradesh','2020-03-19 18.00.00', 'P', 5695),

('Sidhartha Medical College, Vijaywada','Government Laboratory','Siddhartha Medical College, Vijayawada NH 16 Service Rd, beside Dr NTR University of Health Sciences, Gunadala, Vijayawada, Andhra Pradesh 520008','Vijayawada	','Andhra Pradesh','2020-03-19 18.00.00', 'P', 5694),

('Centre for DNA Fingerprinting and Diagnostics (CDFD), Hyderabad','Government Laboratory','Centre for DNA Fingerprinting and Diagnostics (CDFD), Inner Ring Road, Uppal, Hyderabad – 500039, Telangana, India','Hyderabad','Telangana','2020-03-26 18.00.00', 'P', 5690),

('Laboratory Services Apollo Hospitals, Hyderabad',	'Private Laboratory','Laboratory Services Apollo Hospitals Hyderabad, 6th Floor Health street Building, Jubilee Hills, Hyderabad 500096','	Hyderabad','Telangana','2020-04-16 18.00.00', 'P', 5697),

('Kanyakumari Government Medical College, Nagercoil', 'Government Laboratory','Kanyakumari Government Medical College, Asaripallam, Nagercoil, Kanyakumari, Tamil Nadu, India-629201',	'Nagercoil','Tamil Nadu','2020-03-26 18.00.00', 'P', 5704);

-- VIEWING THE FINAL TABLE 'TESTING'
SELECT * FROM Testing;

