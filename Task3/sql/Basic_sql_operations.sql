
-- Inert a new student into the Student table
INSERT INTO Student (StudentID, StudentName, Email) VALUES
(0, 'Rita', 'rita@email.com'),
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');

-- Insert a new club into the Club table
INSERT INTO Club (ClubName, ClubRoom, ClubMentor) VALUES
('Photography Club', 'R404', 'Ms. Anita'),
('Music Club', 'R101', 'Mr. Raman'),
('Sports Club', 'R202', 'Ms. Sita'),
('Drama Club', 'R303', 'Mr. Kiran'),
('Coding Club', 'Lab1', 'Mr. Anil');	


-- Display all students
SELECT * FROM Student;

-- Display all clubs
SELECT * FROM Club;
