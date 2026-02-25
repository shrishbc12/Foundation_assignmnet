students = ["S1", "S2", "S3", "S4"]

# Constraint: pairs that cannot sit together
cannot_sit_together = [("S1","S2"), ("S3","S4")]

# City mapping
student_city = {"S1":"CityA", "S2":"CityA", "S3":"CityB", "S4":"CityC"}

# Sort students by number of constraints (most conflicts first)
students_sorted = sorted(students, key=lambda s: sum(s in pair for pair in cannot_sit_together), reverse=True)

arrangement = []

for student in students_sorted:
    placed = False
    for i in range(len(arrangement)+1):
        temp = arrangement[:i] + [student] + arrangement[i:]
        valid = True
        for j in range(len(temp)-1):
            s1, s2 = temp[j], temp[j+1]
            if (s1, s2) in cannot_sit_together or (s2, s1) in cannot_sit_together:
                valid = False
                break
            if student_city[s1] == student_city[s2]:
                valid = False
                break
        if valid:
            arrangement = temp
            placed = True
            break
    if not placed:
        arrangement.append(student)
        
print("Heuristic seating:", arrangement)
