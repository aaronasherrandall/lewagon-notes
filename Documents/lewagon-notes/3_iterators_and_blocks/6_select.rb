# Select
# Filter from an array elements for which some code is true
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Stevie Wonder']

# Extract musicians starting with R

r_musicians = musicians.select do |musician|
  #CONDITION
  musician.start_with?('R')
end
# Return new array with elements which returned true in musicians array
# This is a search function
# ["Roger Waters", "Richard Wright"]

p r_musicians
