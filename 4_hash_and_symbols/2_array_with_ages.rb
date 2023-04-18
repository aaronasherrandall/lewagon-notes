students = ["Aaron", "Stacy", "John"]
student_ages = [12, 32, 40]

students.each_with_index do |student, index|
  puts "#{student} is #{student_ages[index]}"
end

# Count students over 20
puts student_ages.count { |student_age| student_age > 20 }
# Aaron is 12
# Stacy is 32
# John is 40
