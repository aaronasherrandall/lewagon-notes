p "hello".class
# String
p :hello.class
# Symbol

p "hello" == :hello
# false

p :hello.to_s
# "hello"
p "hello".to_sym
# :hello

paris = {
  country: "France",
  population: 2211000
}
# we can put the colon after the symbol
# keys are still symbols and easier to read syntax

paris.each do |key, value|
  puts "#{key} is #{value}"
end
# country is France
# population is 2211000

p paris[:country]
# "France"
p paris["country"]
# nil
