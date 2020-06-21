use covid19;
-- CREATING TABLE 'STAFF' WITH PRIMARY KEY 'SID' (STAFF ID)
CREATE TABLE Staff
(SID INT NOT NULL AUTO_INCREMENT,
S_Type VARCHAR(45),
S_FirstName VARCHAR(45), 
S_LastName VARCHAR(45),
S_Gender CHAR(1),
S_WardNo INT,
S_Checkin DATETIME,
NumofPatients INT,
S_Contact VARCHAR(10),
PID VARCHAR(255),
PRIMARY KEY(SID));

-- STARTING 'SID' VALUE WITH THE VALUE '1256'
ALTER TABLE Staff AUTO_INCREMENT = 1256;
-- ADD COLUMN FOR FOREIGN KEY 'HID' FROM HOSPITALS TABLE
ALTER TABLE Staff ADD COLUMN HID INT;
-- ADDING 'HID' AS FOREIGN KEY
ALTER TABLE Staff ADD FOREIGN KEY (HID) REFERENCES Hospitals(HID);

DROP TABLE Staff;

-- INSERTING VALUES INTO 'STAFF'
INSERT INTO Staff(S_Type, S_FirstName, S_lastName, S_Gender, S_WardNo, S_Checkin, NumofPatients, S_Contact, PID , HID)
VALUES
-- Enter Values (Each Doc has one Nurse)
-- MAharastra  
('Doctor','Rohan','Varma','M', 102, '2020-03-21 09.00.00', 2, 9564895326,'5689',18957),
('Nurse','Megha','Shankaran','F', null, '2020-03-21 09.00.00', 2, 7896589321,'5689', 18957),
('Doctor','Koushik','Sharma','M', 108, '2020-03-25 09.00.00', 2, 9995556359,'5702', 18958),
('Nurse','Madhuri','Maddi','F', null, '2020-03-25 09.00.00', 2, 7756984265, '5702', 18958),
-- AP
('Doctor','Sheela','Jenson','F', 203, '2020-03-22 09.00.00', 3, 8899551654,'5694, 5703', 18955),
('Nurse','Srista','Shekar','F', null, '2020-03-22 09.00.00', 2, 9856452365,'5694, 5696, 5703', 18955),
('Doctor','Tara','Singh','M', 210, '2020-03-22 09.00.00', 3, 8954763214,'5696, 5695, 5704', 18956),
('Nurse','Simon','Rich','M', null, '2020-03-22 09.00.00', 2, 9854213654,'5694,5696,5703', 18956),
-- TS
('Doctor','Pooja','Hedge','F', 552, '2020-03-22 09.00.00', 3, 7785694236,'5697', 18950),
('Nurse','Geeta','Krishnan','F', null, '2020-03-22 09.00.00', 2, 8563214569,'5690, 5697', 18950),
('Doctor','Preeti','Singh','F', 550, '2020-03-22 09.00.00', 3, 8547123694,'5690', 18951),
('Nurse','Chandrashekhar','Reddy','M', null, '2020-03-22 09.00.00', 2, 7569842365,'5690, 5697', 18951),
-- TN
('Doctor','Mohit','Jain','M', 1762, '2020-03-22 09.00.00', 3, 7896541230,'5691', 18952),
('Nurse','Simran','Reddy','F', null, '2020-03-22 09.00.00', 4, 8965477895,'5691, 5692', 18952),
('Doctor','Meha','Jain','F', 1788, '2020-03-22 09.00.00', 3, 7896541230,'5701', 18952),
('Nurse','Simran','Reddy','F', null, '2020-03-22 09.00.00', 4, 8965477895,'5701, 5691, 5692', 18952),

-- Karnataka
('Doctor','Ruchitha','Bhatia','F', 2563, '2020-03-22 09.00.00', 5, 9996663256,'5693, 5698', 18953),
('Nurse','Aditi','Chaudary','F', null, '2020-03-22 09.00.00', 5, 8569774412,'5699, 5693', 18953),
('Doctor','Robert','Daniels','M', 1756, '2020-03-22 09.00.00', 3, 8885324169,'5699, 5700', 18954),
('Nurse','Lakshmi','Reddy','F', null, '2020-03-22 09.00.00', 4, 8777456329,'5700, 5699, 5698', 18954);

-- VIEWING THE FINAL TABLE 'STAFF'
SELECT * FROM Staff;




