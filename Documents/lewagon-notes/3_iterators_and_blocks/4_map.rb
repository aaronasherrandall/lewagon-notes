#MAP
# "Transform” one array to another one by applying some code on each element.

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Stevie Wonder']

# Return a new array of upcased musicians

upcased_musicians = musicians.map do |musician|
  musician.upcase
end

p musicians
p upcased_musicians
# ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Mason", "Stevie Wonder"]
# ["DAVID GILMOUR", "ROGER WATERS", "RICHARD WRIGHT", "NICK MASON", "STEVIE WONDER"]
# Original array is unchanged
# # of elements will always be the same

# Return a new array of musicians first names
# [38] pry(main)> 'David Gilmour'.split
# => ["David", "Gilmour"]

first_names = musicians.map do |musicians|
  musicians.split.first # musicians.split[0] also works
end
["David", "Roger", "Richard", "Nick", "Stevie"]

p first_names
