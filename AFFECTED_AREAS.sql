USE covid19;
-- CREATING TABLE 'AFFECTEDAREAS' WITH PRIMARY KEY 'AID' (AREA ID)
CREATE TABLE AffectedAreas(
AID INT NOT NULL AUTO_INCREMENT,
A_Name VARCHAR(45),
A_State VARCHAR(45),
ROG_ZONE CHAR(1),
A_Positive INT,
A_Negative INT,
A_Deaths INT,
A_Recovery INT,
PRIMARY KEY (AID));

#ALTER TABLE AffectedAreas CHANGE RYG_ZONE ROG_ZONE char(1);

-- STARTING 'AID' VALUE WITH THE VALUE '789'
ALTER TABLE AffectedAreas AUTO_INCREMENT= 789;

DROP TABLE AffectedAreas;

#NO FOREIGN KEYS TO BE ADDED

-- INSERTING VALUES INTO 'AFFECTEDAREAS'
INSERT INTO AffectedAreas(A_Name, A_State, ROG_ZONE, A_Positive, A_Negative, A_Deaths, A_Recovery)  
VALUES
-- Red Zones
('Kakinada','Andhra Pradesh','R', 6009, 365, 45, 56),
('Vijayawada','Andhra Pradesh','R', 6250, 564, 36, 23),
('Kachiguda','Telangana','R', 5589, 251, 14, 22),
('Bapuji Nagar','Karnataka','R', 5984, 333, 15, 56),
('Kukatpally','Telangana','R', 2568, 120, 51, 12),
('Chengalpattu','Tamil Nadu','R', 3376, 52, 56, 21),
('Kolhapur','Maharastra','R', 3325, 178, 42, 20),
('Pune','Maharastra','R', 6609, 238, 55, 26),
-- Orange Zones
('Karimnagar','Telangana','O', 526, 56, 25, 15),
('Nizamabad','Telangana','O', 538, 66, 20, 12),
('Chikkaballapura','Karnataka','O', 322, 78, 32, 20),
('Anantapur','Andhra Pradesh','O', 609, 88, 35, 26),
('Srikakulam','Andhra Pradesh','O', 854, 65, 25, 16),
('Coimbatore','Tamil Nadu','O', 525, 62, 16, 32),
('Theni','Tamil Nadu','O', 615, 56, 26, 22),
-- Green Zones
('Ameerpet','Telangana','G', 0, 0, 0, 0),
('Hasan','Karnataka','G', 0, 0, 0, 0),
('Solapur','Maharastra','G', 0, 0, 0, 0),
('Vizianagaram','Andhra Pradesh','G', 0, 0, 0, 0);

-- VIEWING THE FINAL TABLE 'AFFECTEDAREAS'
SELECT * FROM AFFECTEDAREAS;
