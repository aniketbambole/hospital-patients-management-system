# MediTrack -- Hospital Patients Management System (MySQL)

## Project Overview

MediTrack is a relational database project built with MySQL to organize
sample hospital data. It covers patients, doctors, appointments,
prescriptions, and billing, with SQL queries for retrieving and
analysing the records.

## Database Structure

The database is named `MediTrack` and contains five tables:

  -----------------------------------------------------------------------
  Table                               Purpose
  ----------------------------------- -----------------------------------
  `Patients`                          Patient details, contact
                                      information, and address

  `Doctors`                           Doctor names, specializations,
                                      consultation fees, and experience

  `Appointments`                      Appointment dates, patients,
                                      doctors, and appointment status

  `Prescriptions`                     Medicines prescribed for
                                      appointments, dosage, and duration

  `Billing`                           Bill amounts, payment methods, and
                                      payment status
  -----------------------------------------------------------------------

The tables are connected using primary keys and foreign keys.

## SQL Concepts Demonstrated

The SQL script includes examples of:

-   Creating a database and tables
-   Inserting sample records
-   Selecting, filtering, and sorting records
-   Aggregate functions such as `COUNT()`, `SUM()`, and `AVG()`
-   `GROUP BY` and `HAVING`
-   Joins across related tables
-   Subqueries
-   `LIMIT`
-   Window functions, including a cumulative revenue calculation
-   Creating indexes
-   Creating and querying views

There are 26 numbered SQL exercises in the script, in addition to the
database setup and table inspection queries.

## Tools and Requirements

-   MySQL 8.0 or later (recommended)
-   MySQL Workbench (or another MySQL client)
-   GitHub

MySQL 8.0 or later is recommended because the script uses a window
function.

## How to Run

1.  Download `hospital_patients_management_system.sql` from this
    repository.
2.  Open MySQL Workbench and connect to your MySQL server.
3.  Open the downloaded `.sql` file.
4.  Review the script, then execute it.
5.  The script creates the `MediTrack` database, creates the tables,
    inserts sample records, and runs the included queries.

**Note:** The script uses `CREATE DATABASE MediTrack;` and creates
objects with fixed names. If you run it again after a successful run,
existing database objects may cause errors. Use a fresh database or
reset the existing project database before rerunning it.

## Project Purpose

This project is intended to practise relational database design and SQL
querying using a hospital-management scenario. It demonstrates how
related records can be joined and how summary information can be
calculated from operational data.

## Author

Aniket Bambole
