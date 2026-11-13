CREATE DATABASE MediTrack;
USE MediTrack;

CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Contact VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(100)
  );

INSERT INTO Patients VALUES
(1, "Rohit Sharma", 34, "M", "9831000001", "rohit.sharma@gmail.com", "Kolkata"), (2, "Simran Kaur", 29, "F", "9831000002", "simran.kaur@yahoo.com", "Delhi"),
(3, "Amit Ghosh", 45, "M", "9831000003", "amit.ghosh@gmail.com", "Mumbai"), (4, "Nisha Patel", 51, "F", "9831000004", "nisha.patel@hotmail.com", "Ahmedabad"),
(5, "Suresh Reddy", 60, "M", "9831000005", "suresh.reddy@gmail.com", "Hyderabad"), (6, "Meera Nair", 38, "F", "9831000006", "meera.nair@yahoo.com", "Chennai"),
(7, "Vikas Yadav", 27, "M", "9831000007", "vikas.yadav@outlook.com", "Lucknow"), (8, "Anjali Gupta", 33, "F", "9831000008", "anjali.gupta@gmail.com", "Jaipur"),
(9, "Rajesh Kumar", 55, "M", "9831000009", "rajesh.kumar@yahoo.com", "Pune"), (10, "Pooja Singh", 41, "F", "9831000010", "pooja.singh@gmail.com", "Bhopal"),
(11, "Sanjay Verma", 48, "M", "9831000011", "sanjay.verma@outlook.com", "Kolkata"), (12, "Kiran Das", 36, "F", "9831000012", "kiran.das@gmail.com", "Delhi"),
(13, "Manoj Tiwari", 29, "M", "9831000013", "manoj.tiwari@yahoo.com", "Mumbai"), (14, "Ritu Chatterjee", 44, "F", "9831000014", "ritu.chatterjee@gmail.com", "Kolkata"),
(15, "Deepak Joshi", 52, "M", "9831000015", "deepak.joshi@outlook.com", "Ahmedabad"), (16, "Swati Bose", 31, "F", "9831000016", "swati.bose@gmail.com", "Hyderabad"),
(17, "Arvind Rao", 39, "M", "9831000017", "arvind.rao@yahoo.com", "Chennai"), (18, "Nandini Sen", 26, "F", "9831000018", "nandini.sen@gmail.com", "Lucknow"),
(19, "Harish Chandra", 58, "M", "9831000019", "harish.chandra@outlook.com", "Jaipur"), (20, "Lata Mishra", 47, "F", "9831000020", "lata.mishra@gmail.com", "Pune");


SELECT * FROM Patients;

CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(50),
    Fee DECIMAL(10, 2),
    Experience_Years INT
  );
  
  INSERT INTO Doctors VALUES
(201, "Dr. Rohan Mehta", "Cardiology", "800.00", 12), (202, "Dr. Ananya Roy", "Dermatology", "500.00", 8),
(203, "Dr. Vikram Singh", "Orthopedics", "700.00", 15), (204, "Dr. Priya Nair", "Pediatrics", "450.00", 10),
(205, "Dr. Arjun Kapoor", "Neurology", "900.00", 18), (206, "Dr. Sneha Iyer", "Gynecology", "600.00", 9),
(207, "Dr. Karan Malhotra", "ENT", "400.00", 7), (208, "Dr. Divya Menon", "Ophthalmology", "550.00", 11),
(209, "Dr. Rahul Verma", "General Medicine", "300.00", 6), (210, "Dr. Neha Joshi", "Psychiatry", "650.00", 13),
(211, "Dr. Sameer Khan", "Urology", "750.00", 14), (212, "Dr. Pooja Desai", "Endocrinology", "700.00", 10),
(213, "Dr. Aditya Rao", "Gastroenterology", "800.00", 16), (214, "Dr. Kavita Pillai", "Oncology", "1000.00", 20),
(215, "Dr. Manish Agarwal", "Nephrology", "850.00", 17);
  
  SELECT * FROM Doctors;

CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
  );

INSERT INTO Appointments VALUES
(3001, 1, 201, "2024-01-05", "Completed"), (3002, 3, 205, "2024-01-06", "Completed"),
(3003, 5, 203, "2024-01-07", "Completed"), (3004, 7, 209, "2024-01-08", "Completed"),
(3005, 10, 214, "2024-01-09", "Completed"), (3006, 2, 206, "2024-01-10", "Completed"),
(3007, 4, 202, "2024-01-11", "Completed"), (3008, 6, 208, "2024-01-12", "Completed"),
(3009, 8, 213, "2024-01-13", "Completed"), (3010, 9, 210, "2024-01-14", "Completed");

SELECT * FROM Appointments;

CREATE TABLE Prescriptions (
    Prescription_ID INT PRIMARY KEY,
    Appointment_ID INT,
    Medicine VARCHAR(100),
    Dosage VARCHAR(20),
    Duration_Days INT,
    FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID)
  );

INSERT INTO Prescriptions VALUES
(5001, 3001, "Aspirin", "75mg", 30), (5002, 3001, "Atorvastatin", "20mg", 30),
(5003, 3002, "Levetiracetam", "500mg", 60), (5004, 3002, "Gabapentin", "300mg", 30),
(5005, 3003, "Ibuprofen", "400mg", 10), (5006, 3003, "Calcium", "500mg", 30),
(5007, 3004, "Paracetamol", "500mg", 5), (5008, 3005, "Tamoxifen", "20mg", 90),
(5009, 3006, "Folic Acid", "5mg", 30), (5010, 3007, "Cetirizine", "10mg", 15),
(5011, 3008, "Timolol Eye Drops", "0.5%", 30), (5012, 3009, "Omeprazole", "20mg", 14),
(5013, 3010, "Sertraline", "50mg", 60);

SELECT * FROM Prescriptions;

CREATE TABLE Billing (
    Bill_ID INT PRIMARY KEY,
    Appointment_ID INT,
    Amount DECIMAL(10, 2),
    Payment_Method VARCHAR(50),
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Appointment_ID) REFERENCES Appointments(Appointment_ID)
  );

INSERT INTO Billing VALUES
(4001, 3001, "800.00", "Credit Card", "Paid"), (4002, 3002, "900.00", "Credit Card", "Paid"),
(4003, 3003, "700.00", "Cash", "Paid"), (4004, 3004, "300.00", "Debit Card", "Paid"),
(4005, 3005, "1000.00", "Credit Card", "Paid"), (4006, 3006, "600.00", "UPI", "Paid"),
(4007, 3007, "500.00", "Cash", "Paid"), (4008, 3008, "550.00", "Debit Card", "Paid"),
(4009, 3009, "800.00", "Credit Card", "Paid"), (4010, 3010, "650.00", "UPI", "Paid");

SELECT * FROM Billing;


-- 1.	List all appointments scheduled after '2024-01-08'.
SELECT * FROM Appointments WHERE Appointment_Date > '2024-01-08';

-- 2.	Retrieve all payments made via 'Credit Card'.
SELECT * FROM Billing WHERE Payment_Method = 'Credit Card';

-- 3.	Display the 5 doctors with the highest consultation fees.
SELECT * FROM Doctors ORDER BY Fee DESC LIMIT 5;

-- 4.	Show the 3 most recent appointments.
SELECT * FROM Appointments ORDER BY Appointment_Date DESC LIMIT 3;

-- 5.	Find all medicines prescribed to 'Rohit Sharma'.
SELECT pr.Medicine FROM Prescriptions pr
  JOIN Appointments a ON pr.Appointment_ID = a.Appointment_ID
  JOIN Patients p ON a.Patient_ID = p.Patient_ID
  WHERE p.Name = 'Rohit Sharma';

-- 6.	Display bills with an amount greater than the average billing amount.
SELECT * FROM Billing WHERE Amount > (SELECT AVG(Amount) FROM Billing);

-- 7.	Find the total number of appointments booked by each patient.
select patient_id, count(*) as total_appointment from appointments group by patient_id;

-- 8.	Find the average consultation fee for each specialization.
select avg(fee) as consultation_fee, specialization from doctors group by specialization;

-- 9.	Show the number of completed appointments.
select count(*) as completed_appointment from appointments where status = 'completed';

-- 10.	Find the patient who has spent the most on medical bills.
select a.patient_id, sum(b.amount) as total_spent from appointments a 
join billing b on b.appointment_id = a.appointment_id
group by a.patient_id
order by sum(b.amount) desc limit 1;

-- 11.	Identify doctors who have not attended any appointments.
SELECT Name FROM Doctors
WHERE Doctor_ID NOT IN (SELECT DISTINCT Doctor_ID FROM Appointments);

-- 12.	Calculate the cumulative billing revenue per day.
select  a.appointment_date,b.amount, sum(b.amount) over (order by appointment_date) as cumulative_revenue
from appointments a 
join billing b on a.appointment_id = b.appointment_id; 

-- 13.	Find the total revenue generated from each payment method.

select payment_method,sum(amount) as total_revenue from billing group by payment_method;

-- 14.	Display the total amount billed to each patient.

select p.patient_id,p.name,sum(b.amount) as total_amt_bill from patients p
join appointments a on a.patient_id = p.patient_id
join billing b on b.appointment_id = a.appointment_id
group by p.name,p.patient_id
having sum(b.amount);

-- 15.	Retrieve appointments where more than one medicine was prescribed.

select appointment_id, count(*) as total_medicine from prescriptions
group by appointment_id 
having count(*)>1;

-- 16.	Show patients who have paid via 'UPI'.
SELECT DISTINCT p.Name FROM Patients p
  JOIN Appointments a ON p.Patient_ID = a.Patient_ID
  JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
  WHERE b.Payment_Method = 'UPI';

-- 17.	Find the average billing amount per month.

SELECT MONTH(a.Appointment_Date) AS Month, AVG(b.Amount) AS Avg_Amount
  FROM Appointments a JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
  GROUP BY Month;

-- 18.	Retrieve the specialization that generated the highest total revenue.

select d.specialization, sum(b.amount) as Total_revenue from doctors d
join appointments a on a.doctor_id = d.doctor_id
join billing b on b.appointment_id = a.appointment_id
group by d.specialization
order by d.specialization desc limit 1;

-- 19.	Retrieve the top 3 patients with the highest total billing amounts.
select a.patient_id, sum(b.amount) as total_amt from appointments a 
join billing b on b.appointment_id = a.appointment_id
group by a.patient_id 
order by total_amt desc limit 3;

-- 20.	Find the payment method that has processed the most transactions.

select payment_method, count(*) as Transaction_count from billing 
group by payment_method
order by Transaction_count desc limit 1;

-- 21.	Show the total billing amount generated by each specialization.

SELECT d.Specialization, SUM(b.Amount) AS Total_Revenue
  FROM Doctors d JOIN Appointments a ON d.Doctor_ID = a.Doctor_ID
  JOIN Billing b ON a.Appointment_ID = b.Appointment_ID
  GROUP BY d.Specialization;

-- 22.	List each specialization with its doctor's consultation fee.
SELECT * FROM patients;
SELECT * FROM appointments;
SELECT * FROM doctors;
SELECT * FROM prescriptions;
SELECT * FROM billing;

select specialization, sum(fee) as total_fees from doctors group by specialization;
-- (find the count rows returned above query)

-- 23.	Create an index to search appointments by patient.
CREATE INDEX idx_patient_id ON Appointments(Patient_ID);
DESC Appointments;


-- 24.	Create a unique index for patient emails.
CREATE UNIQUE INDEX idx_email ON Patients(Email);
DESC Patients;


-- 25.	Create a view to show bills above $700.
CREATE VIEW HighValueBills AS
  SELECT * FROM Billing WHERE Amount > 700;
 
SELECT * FROM HighValueBills;

-- 26.	Create a view for total revenue per payment method.
CREATE VIEW RevenueSummary AS
  SELECT Payment_Method, SUM(Amount) AS Total_Revenue
  FROM Billing GROUP BY Payment_Method;
 
SELECT * FROM RevenueSummary;







