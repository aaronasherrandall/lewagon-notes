students = ["Aaron", "Stacy", "John"]


# CRUD

# Create
students.push("Ben")
students << "Juri"
p students


# Read

p students[1]

# Update

students[-1] = "Super Juri"
p students

# Delete

students.delete_at(-1)
# students.delete("Super Juri")
p students
