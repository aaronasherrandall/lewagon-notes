grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
sum = 0
grades.each do |element|
  sum += element
end
average = sum / grades.size
puts average

def capitalize_name(first_name, last_name)
  "#{first_name.capitalize} #{last_name.capitalize}"
end

puts capitalize_name('aaron', 'randall')
