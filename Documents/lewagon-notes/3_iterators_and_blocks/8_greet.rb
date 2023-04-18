# Let's code a custom greeting method

def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end
# if we yield full_name, we can use it outside of the greet method
# such as using it in the different greet blocks below

hello = greet('john', 'lennon') do |name|
  "Hello #{name}, you are looking quite fine today!"
end

puts hello

bonjour = greet('john', 'lennon') do |name|
  "Bonjour #{name}, comment allez-vouse?"
end
puts bonjour
