# Range
range = (1..10)
p range
# 1..10
# range = (1..10) - ignores upper bounds
# range.to_a
# [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Change into an array
p range.to_a
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Apply computation to every element in a collection
# For loop
for i in 1..10
  puts i
end
# prints 1 - 10 on separate lines

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Stevie Wonder']

# if we want to to run 5 times exactly
# no matter how long the array is, the loop will print every single element
for i in 0...(musicians.length)
  puts musicians[i]
end
# David Gilmour
# Roger Waters
# Richard Wright
# Nick Mason
# Stevie Wonder

for musician in musicians
  puts musician
end
# David Gilmour
# Roger Waters
# Richard Wright
# Nick Mason
# Stevie Wonder

# for loop is not idiomatic?
