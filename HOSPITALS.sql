use covid19;
-- CREATING TABLE 'HOSPITALS' WITH PRIMARY KEY 'HID' (HOSPITAL ID)
CREATE TABLE Hospitals
(HID INT NOT NULL AUTO_INCREMENT,
H_Name VARCHAR(255),
Address VARCHAR(255),
City VARCHAR(45),
H_State VARCHAR(45),
H_Pincode INT,
H_Contact VARCHAR(45),
PRIMARY KEY(HID));

-- STARTING 'HID' VALUE WITH THE VALUE '18950'
ALTER TABLE Hospitals AUTO_INCREMENT = 18950;
drop table Hospitals;

-- ADD COLUMN FOR FOREIGN KEY 'PID' FROM PATIENT TABLE
ALTER TABLE Hospitals ADD COLUMN PID INT;
-- ADD COLUMN FOR FOREIGN KEY 'TID' FROM TEST TABLE
ALTER TABLE Hospitals ADD COLUMN TID INT;
-- ADDING 'PID' AS FOREIGN KEY
ALTER TABLE Hospitals ADD FOREIGN KEY (PID) REFERENCES Patients(PID);
-- ADDING 'TID' AS FOREIGN KEY
ALTER TABLE Hospitals ADD FOREIGN KEY (TID) REFERENCES Testing(TID);

-- INSERTING VALUES INTO 'HOSPITALS'
INSERT INTO Hospitals(H_Name, Address, City, H_State, H_Pincode, H_Contact, PID, TID)
VALUES
-- Enter Values
('Gandhi Hopitals','Bhoiguda Road, Musheerabad, Near Old Jail','Hyderabad','Telangana', 500020, '040-2356485',5690,78573),

('Guardian Multi Speciality Hospital','House No. 15-1-237, Opposite L.B. College, Mulugu X Road', 'Kukatpally','Telangana', 506007,'080088 02292',5697,78574),

('CITY HOSPITAL','PAVALAM TRAUMA CENTRE 4 / 361 ,TRICHI ROAD', 'Coimbatore','Tamil Nadu',624005 ,'0451 2436060 / 2435050 ',5691, 78565),

-- ('KANCHI KAMAKOTI CHILDS TRUST HOSPITAL','12 A NAGESWARA ROAD,NUNGAMBAKKAM','CHENNAI','TAMIL NADU',600034,'044 42001800', ,78575),

('APOLLO HOSPITALS','New No.1(Old No.28),Platform Road,Near Mantri Mall, Sheshadripuram','Bangalore','Karnataka', 560020,'46688888/8114',5693,78568),

('BGS GLOBAL HOSPITAL (BGS Health & Education City)','#67, Uttarahalli Road, Kengeri','Bangalore','Karnataka', 560060,'08026255555/49067555',5699,78569),

('Rama Nursing Home',' Dr.Nageswar Rao Street, Nagoyolonka ','Vijayawada ','Andhra Pradesh', 521120,' 08671-274285',5694,78572),

(' Sraddha Hospital',' 14-37-45 Collector S Office Junction','Srikakulam','Andhra Pradesh', 530001,' 0891-2797878 ', 5704, 78575),

('Kotbagi Hospital','163, DP Rd, Near DAV Public School, Harmony Society, Ward No. 8, Wireless Colony, Aundh','Pune','Maharashtra', 411007,'020 4310 0400',5689,78566),

('Acharya Vinoba Bhave Rural Hospital','39/25, Behind Kaka Halwai, Karve Road, Erandwane','Wardha','Maharashtra', 442001,'07152287702', 5702, 78567);

-- VIEWING THE FINAL TABLE 'HOSPITALS'
SELECT * FROM HOSPITALS;
SELECT COUNT(*) FROM HOSPITALS;
