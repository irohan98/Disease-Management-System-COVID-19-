USE covid19;
-- CREATING TABLE 'PATIENTS' WITH PRIMARY KEY 'PID' (PATIENT ID)
CREATE TABLE Patients
(PID INT NOT NULL AUTO_INCREMENT,
P_FirstName VARCHAR(45),
P_LastName VARCHAR(45),
P_Age INT,
P_Gender CHAR(1),
P_Nationality VARCHAR(30),
P_TravelInfo VARCHAR(255),
P_DetectedArea VARCHAR(45),
P_DetectedState VARCHAR(45),
P_AdmitDate DATETIME, 
P_Symptoms VARCHAR(255),
P_ImprovementDate DATETIME,
P_Notes VARCHAR(255),
PRIMARY KEY(PID));

-- STARTING 'PID' VALUE WITH THE VALUE '5689'
ALTER TABLE Patients AUTO_INCREMENT = 5689;
-- ADD COLUMN FOR FOREIGN KEY 'AID' FROM AFFECTED_AREAS TABLE
ALTER TABLE Patients ADD COLUMN AID INT;
-- ADDING 'AID' AS FOREIGN KEY
ALTER TABLE Patients ADD FOREIGN KEY (AID) REFERENCES AffectedAreas(AID);

DROP TABLE Patients;

-- INSERTING VALUES INTO 'PATIENTS'
INSERT INTO Patients(P_FirstName, P_LastName, P_Age, P_Gender, P_Nationality, P_TravelInfo, P_DetectedArea, P_DetectedState
,P_AdmitDate, P_Symptoms, P_ImprovementDate, P_Notes, AID) 
VALUES
-- Enter Values, AID STARTS FROM 789

('Kamesh', 'G', 20, 'M', 'Indian','Travelled from Italy','Pune', 'Maharastra', '2020-03-21 09.30.00','Normal Symptoms of cold, cough
and Breathing difficulty experienced during the initial phase','2020-04-25 19.00.00','Needs to be Quarantined', 796),

('Madhav','K', 24, 'M', 'Indian','Travelled from Dubai to Bangalore and then came to Hyd','Kachiguda', 'Telangana','2020-03-21 19.00.00',
 'Loss of breath, smell and taste','2020-03-25 09.15.00','Needs to be Quarantined', 791),
 
 ('Lakshmi','S', 32, 'F', 'Indian','Travelled from Maharastra','Coimbatore', 'Tamil Nadu','2020-03-22 15.48.00',
 'Severe Breathing Difficulty','2020-04-14 17.19.40','Needs Ventilator', 802),
 
 ('Srinivas','M', 62, 'M', 'Indian','Travelled From Spain','Coimbatore', 'Tamil Nadu','2020-03-22 16.00.02',
 'Severe Cough and Breathing problems','2020-04-11 07.29.00','Needs Attention', 802),
 
 ('Shekaram','N', 70, 'M', 'Indian','Travelled From Mumbai To Karnataka','Hasan', 'Karnataka','2020-03-22 06.00.02',
 'Breathing problems','2020-03-30 17.39.00','Needs to be Quarantined', 805),
 
 ('Lekha','K', 36, 'F', 'Indian','Travelled From Italy','Vijayawada', 'Andhra Pradesh','2020-03-22 16.26.00',
 'Severe Cough and Breathing problems','2020-03-30 17.09.00','Needs Attention', 790),

('Rekha','S', 45, 'F', 'Indian','Travelled From Dubai','Kakinada', 'Andhra Pradesh','2020-03-22 06.26.00',
 'Cough, Loss of Taste and Smell','2020-03-30 14.30.00','Needs to be Quarantined', 789),
 
 ('Sushma','K', 36, 'F', 'Indian','Travelled From Italy','Vijayawada', 'Andhra Pradesh','2020-03-22 16.15.00',
 'Severe Cough and Breathing problems','2020-03-26 15.09.00','Observation needed', 790),
 
 ('Rejath','P', 44, 'M', 'Indian','Travelled From Delhi','Kukatpally', 'Telangana','2020-03-23 16.20.00',
 'Severe Cough and Breathing problems','2020-04-01 07.09.00','Needs to be Quarantined', 793),
 -- Start from here 
 ('Xiang','Ping', 74, 'M', 'Chinese','Travelled From China','Bapuji Nagar', 'Karnataka','2020-03-23 23.20.00',
 'Severe Cough and Breathing problems',NULL,'Critical Condition', 792),
 
 ('Revathi','J', 43, 'F', 'Indian','Travelled From USA','Chikkaballapura', 'Karnataka','2020-03-24 10.20.45',
 'Severe Cough and signs of the virus','2020-04-23 10.10.00','Observation Needed', 799),
 
 ('Manish','M', 55, 'M', 'Indian','Travelled From Spain','Chikkaballapura', 'Karnataka','2020-03-24 12.20.45',
 'Severe Cough and Breathing problems',NULL,'Needs Ventilator', 799),
 
 ('Shashank','H', 32, 'M', 'Indian','Travelled From Spain','Chengalpattu', 'Tamil Nadu','2020-03-24 15.27.45',
 'Breathing problems and loss of smell and taste',NULL,'Needs Ventilator', 794),
 
 ('Karthik','H', 29, 'M', 'Indian','Travelled From Dubai','Kolhapur', 'Maharastra','2020-03-25 18.17.00',
 'Severe Cough and Breathing problems',NULL,'Needs Ventilator', 795),
 
 ('Shiksha','K', 33, 'F', 'Indian','Travelled From USA','Anantapur', 'Andhra Pradesh','2020-03-25 19.17.00',
 'Breathing problems and loss of smell and taste',NULL,'Needs Ventilator', 800),
 
 ('Rahul','R', 32, 'M', 'Indian','Travelled From USA','Srikakulam', 'Andhra Pradesh','2020-03-25 18.17.00',
 'Breathing problems and loss of smell and taste',NULL,'Needs Ventilator', 801);
 
-- VIEWING THE FINAL TABLE 'STAFF'
SELECT * FROM Patients;

#SELECT COUNT(*) FROM Patients;

#SELECT * FROM Patients where P_DETECTEDSTATE = 'Karnataka';

#UPDATE Patients
#SET P_Symptoms = 'Breathing problems'
#WHERE PID = 5693;