# Iterators

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Stevie Wonder']

# Each

# block arguments ||
# what's inside || corresponds to each element in the array: musician, fruit, etc.
# runs through each element in the array and executes block
musicians.each do |musician|
  # this is a block
  puts "Hello #{musician}"
end
# Hello David Gilmour
# Hello Roger Waters
# Hello Richard Wright
# Hello Nick Mason
# Hello Stevie Wonder

# Each with index
# Display an ordered list

# provides arg for element and index
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}" # only index will give us 0
end
# 1 - David Gilmour
# 2 - Roger Waters
# 3 - Richard Wright
# 4 - Nick Mason
# 5 - Stevie Wonder
