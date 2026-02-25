import itertools

# List of students (generic labels)
students = ["S1", "S2", "S3", "S4"]

# Pairs of students who cannot sit together (friends)
cannot_sit_together = [("S1","S2"), ("S3","S4") ]

# Students from same city
student_city = {"S1":"CityA", "S2":"CityA", "S3":"CityB", "S4":"CityC"}

def valid(arrangement):
  for i in range(len(arrangement)-1):
    s1, s2 = arrangement[i], arrangement[i+1]
    if (s1, s2) in cannot_sit_together or (s2, s1) in cannot_sit_together:
      return False
    if student_city[s1] == student_city[s2]:
      return False
  return True

# Check all permutations
for arrangement in itertools.permutations(students):
  if valid(arrangement):  
    print("Valid seating:", arrangement)
