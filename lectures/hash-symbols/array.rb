students = ["Peter", "Mary", "George", "Emma"]
student_ages = [24, 25, 22, 20]
# student_countries = ["Japan", "France", "Germany", "Spain"]

# Write a program to display a list of students with their age
# e.g.
# Peter is 24 years old
# Mary is 25 years old
# etc.

students.each_with_index do |student, student_index|
  puts "#{student} is #{student_ages[student_index]} years old"
end

# CRUD

# Read
# array_name[index]
students[1] # => "Mary"

# Create
students << "Syrene"
students.push("Syrene")

# Update
student_ages[0] = 25

# Delete
students.delete_at(-1)

# AS A HASH
puts
puts "=== AS A HASH ==="
puts

# students = ["Peter", "Mary", "George", "Emma"]
# student_ages = [24, 25, 22, 20]

students_hash = {
  "Peter" => 24,
  "Mary" => 25,
  "Syrene" => 18,
  "George" => 22,
  "Emma" => 20
}

students_hash.each do |name, age|
  puts "#{name} is #{age} years old"
end
