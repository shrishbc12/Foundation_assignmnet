-- =============================================
-- Stepwise Normalization: College Club
-- =============================================

-- =============================================
-- STEP 1: Original Denormalized Table (1NF)
-- =============================================
-- Denormalized table with Student, Club, and Membership info
CREATE TABLE OriginalClub (
    StudentID INT,
    StudentName VARCHAR(50),
    Email VARCHAR(50),
    ClubName VARCHAR(50),
    ClubRoom VARCHAR(10),
    ClubMentor VARCHAR(50),
    JoinDate DATE
);

-- Insert all data
INSERT INTO OriginalClub VALUES
(1, 'Asha', 'asha@email.com', 'Music Club', 'R101', 'Mr. Raman', '2024-01-10'),
(2, 'Bikash', 'bikash@email.com', 'Sports Club', 'R202', 'Ms. Sita', '2024-01-12'),
(1, 'Asha', 'asha@email.com', 'Sports Club', 'R202', 'Ms. Sita', '2024-01-15'),
(3, 'Nisha', 'nisha@email.com', 'Music Club', 'R101', 'Mr. Raman', '2024-01-20'),
(4, 'Rohan', 'rohan@email.com', 'Drama Club', 'R303', 'Mr. Kiran', '2024-01-18'),
(5, 'Suman', 'suman@email.com', 'Music Club', 'R101', 'Mr. Raman', '2024-01-22'),
(2, 'Bikash', 'bikash@email.com', 'Drama Club', 'R303', 'Mr. Kiran', '2024-01-25'),
(6, 'Pooja', 'pooja@email.com', 'Sports Club', 'R202', 'Ms. Sita', '2024-01-27'),
(3, 'Nisha', 'nisha@email.com', 'Coding Club', 'Lab1', 'Mr. Anil', '2024-01-28'),
(7, 'Aman', 'aman@email.com', 'Coding Club', 'Lab1', 'Mr. Anil', '2024-01-30');

-- =============================================
-- STEP 2: Decompose to 2NF
-- =============================================
-- Student Table: Attributes dependent only on StudentID
-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(50)
);

-- Club Table
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(50),
    ClubRoom VARCHAR(10),
    ClubMentor VARCHAR(50)
);

-- Membership Table
CREATE TABLE Membership (
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    PRIMARY KEY (StudentID, ClubID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

-- Insert Students
INSERT INTO Student VALUES
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');

-- Insert Clubs
INSERT INTO Club VALUES
(1, 'Music Club', 'R101', 'Mr. Raman'),
(2, 'Sports Club', 'R202', 'Ms. Sita'),
(3, 'Drama Club', 'R303', 'Mr. Kiran'),
(4, 'Coding Club', 'Lab1', 'Mr. Anil');

-- Insert Memberships
INSERT INTO Membership VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-12'),
(1, 2, '2024-01-15'),
(3, 1, '2024-01-20'),
(4, 3, '2024-01-18'),
(5, 1, '2024-01-22'),
(2, 3, '2024-01-25'),
(6, 2, '2024-01-27'),
(3, 4, '2024-01-28'),
(7, 4, '2024-01-30');

-- =============================================
-- STEP 3: Decompose to 3NF
-- =============================================
-- Introduce ClubID as primary key (surrogate key) to remove transitive dependencies
-- Create Student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(50)
);

-- Create Club table
CREATE TABLE Club (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(50),
    ClubRoom VARCHAR(10),
    ClubMentor VARCHAR(50)
);

-- Create Membership table
CREATE TABLE Membership (
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    PRIMARY KEY (StudentID, ClubID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

-- Insert Students
INSERT INTO Student VALUES
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');

-- Insert Clubs
INSERT INTO Club VALUES
(1, 'Music Club', 'R101', 'Mr. Raman'),
(2, 'Sports Club', 'R202', 'Ms. Sita'),
(3, 'Drama Club', 'R303', 'Mr. Kiran'),
(4, 'Coding Club', 'Lab1', 'Mr. Anil');

-- Insert Memberships
INSERT INTO Membership VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-12'),
(1, 2, '2024-01-15'),
(3, 1, '2024-01-20'),
(4, 3, '2024-01-18'),
(5, 1, '2024-01-22'),
(2, 3, '2024-01-25'),
(6, 2, '2024-01-27'),
(3, 4, '2024-01-28'),
(7, 4, '2024-01-30');
