#Iterators

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason', 'Stevie Wonder']

# Count musicians starting with R

r_musicians = musicians.count do |musician|
  #CONDITION
  musician.start_with?('R')
end

# Count takes an [] and returns an Integer
# 2

p r_musicians

# Same as musicians.count, but more code...
counter = 0
musicians.each do |musician|
  if musician.start_with?('R')
    counter += 1
  end
end
# 2

p counter
