-- Example 1: Students who joined Sports Club or Music Club (UNION)
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'

UNION 

SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';

-- Example 2: Students who joined Sports Club AND Music Club (INTERSECT)
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'

INTERSECT

SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';

-- Example 3: Students who joined Sports Club but NOT Music Club (EXCEPT)
SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Music Club'

EXCEPT

SELECT s.StudentID, s.StudentName
FROM Student s
JOIN Membership m ON s.StudentID = m.StudentID
JOIN Club c ON m.ClubID = c.ClubID
WHERE c.ClubName = 'Sports Club';
