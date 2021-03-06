USE  covid19;
-- CREATING TABLE 'STAFFHASPATS' WITH PRIMARY KEY 'S_NO' (SERIAL NO)
CREATE TABLE Staffhaspats(
S_NO INT NOT NULL AUTO_INCREMENT,
SID INT,
PID INT,
PRIMARY KEY(S_NO));
-- ADDING 'SID' AS FOREIGN KEY
ALTER TABLE Staffhaspats ADD FOREIGN KEY (SID) REFERENCES Staff(SID);
-- ADDING 'PID' AS FOREIGN KEY
ALTER TABLE Staffhaspats ADD FOREIGN KEY (PID) REFERENCES Patients(PID);

DROP TABLE Staffhaspats;

-- INSERTING VALUES INTO 'STAFFHASPATS'
INSERT INTO Staffhaspats(SID, PID)  
VALUES
(1256, 5689),
(1257, 5689),
(1258, 5702),
(1259, 5702),
(1260, 5694), (1260, 5703),
(1261, 5694), (1261, 5696), (1261, 5703),
(1262,5696), (1262, 5695), (1262, 5704),
(1263,5694), (1263, 5696), (1263, 5703),
(1264, 5697),
(1265,5690), (1265, 5697),
(1266, 5690),
(1267, 5690), (1267, 5697),
(1268, 5691),
(1269, 5691), (1269, 5692),
(1270, 5701),
(1271, 5701),(1271, 5691),(1271, 5692),
(1272, 5693), (1272, 5698),
(1273,5699), (1273, 5693),
(1274, 5699), (1274, 5700),
(1275, 5700), (1275, 5699)
,(1275, 5698);

-- VIEWING THE FINAL TABLE 'STAAFFHASPATS'
SELECT * FROM STAFFHASPATS;