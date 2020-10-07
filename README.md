# Disease-Management-System-COVID-19-
## Abstract
Disease management is a system of coordinated healthcare interventions and
communications for the population with conditions in which patient self-care efforts are
significant.Knowledge sharing, knowledge building and a learning community are integral to
the concept of disease management. It is a population health strategy as well as an
approach to personal health. It may reduce healthcare costs and/or improve quality of life for
individuals by preventing or minimizing the effects of disease, usually a chronic condition,
through knowledge, skills, enabling a sense of control over life (despite symptoms of
disease) and integrative care.
Healthcare plays a very integral role in everyone’s life. It is important for us to keep a track of
all the diseases that are currently affecting the majority of the population. We need to have a
system that helps us keep a track of the areas where the disease has been affected, the age
group, hospitals nearby, the number of cases that have been tested positive, Symptoms
shown by affected patients, population affected by region, recent places visited.
Disease Management systems can help to keep a track of all such vital information and help
control the spread of diseases.

## The Entity-Relationship (E-R) Diagram
An Entity–Relationship model (E-R model) describes the structure of a database with the
help of a diagram using notations known as E-R notations. There are different kinds of E-R
notations, in this case the Crow’s Foot notation has been used. E-R diagrams can be viewed
as an abstract of a database model. The main components of an E-R model are: Entity set
and Relationship set. It helps us understand the relationship between each instance or
entity. Every database design starts with the design of a blueprint (E-R diagram) which is
later used to extract or capture all the details required to build the application.
Relational database design can be sophisticated, hence it is required that the database
architect breaks down the design plan into smaller parts and focuses on every minute detail.
E-R diagrams help make the structure of the database simpler and easier to understand.

Figure 2.1 represents the relationships of the various tables used in our model. This diagram
helps in drafting the code for this project. We have broken down our database design into six
different entities
namely:
1. Hospitals
2. Staff
3. Patients
4. Testing
5. Affected Areas
6. Staff_has_Patients

### Disease Management System (Covid-19) Entities and Attributes-
1. Hospitals - Hospital ID (PK); H_Name; Address;City;H_State;H_Pincode
H_Contact;Patients_PID;Testing_TID
2. Staff - SID (FK); S_Type; S_FirstName; S_LastName; S_Gender; S_WardNo;
S_CheckIn; Num of Patients; S_Contacct; Hospital_HID (FK)
3. Patients - PID(PK) - P_FirstName; P_LastName; P_Age; P_Gender; P_Nationality;
P_TravelInfo; P_DefectedAreas; P_DefectedState; P_AdmitDate; P_Symptoms;
P_ImprovementDate; P_Notes; Affected_Areas_AID(FK)
4. Testing - TID (PK); LabName; LabType; T_Address; T_City; T_State; SampleDate;
Result; Patients_PID(FK)
5. AFFECTED AREAS - AID(PK); A_Name; A_State; RYG_Zone; A_Positive;
A_Negative; A_Deaths; A_Recovery
6. Staff Has Patients - Staff_SID; Patients_PID

### Cardinalities and Relationship between entities-
- The Hospitals table has a one-to-many relationship (1:N) with the Staff table which
means that each Hospital can have more than one staff member.
- The Patients table has a many-to-many relationship (N:M) with the Staff table
which means that many patients can be monitored by many staff members.
(Staffhaspats Table is the new table as a result of this relationship)
- The Patients table has a many-to-one relationship (N:1) with the Hospitals table
which means that multiple patients can be admitted in one hospital
- The Testing Table has a one-to-one relationship (1:1) with the Patients table since
one test corresponds to one patient only
- The Affected Areas table has a one-to-many relationship (1:N) with the Patients
table which means that in one area can have multiple patients
- The Testing table has a many-to-one relationship (N:1) with the Hospitals table
which means that multiple tests can be can come from one hospital

## Conclusion
The project has been accomplished with the help of the "MySQL Workbench 8.0 CE"
application. The E-R diagram was created using this application, along with the tables,
queries being executed in the same.
The queries were written with the help of functions like JOINS, AGGREGATE functions,
basic SELECT statements and other important keywords in MySQL.
The COVID-19 data that we have used in this project is the data that we have found on
Kaggle, an online community of data scientists and machine learning practitioners, which
can be found in this [link](https://www.kaggle.com/sudalairajkumar/covid19-in-india#AgeGroupDetails.csv)
