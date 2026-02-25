-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Email VARCHAR(100)
);

-- Create Club Table
CREATE TABLE Club (
    ClubName VARCHAR(50) PRIMARY KEY,
    ClubRoom VARCHAR(20),
    ClubMentor VARCHAR(50)
);

-- Create Membership Table
CREATE TABLE Membership (
    StudentID INT,
    ClubName VARCHAR(50),
    JoinDate DATE,
    PRIMARY KEY (StudentID, ClubName),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubName) REFERENCES Club(ClubName)
);
