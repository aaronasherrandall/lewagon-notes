# student_ages = [12, 32, 40]
# students = ["Aaron", "Stacy", "John"]

# in a Hash
student_ages = {
  'Aaron' => 12,
  'Stacy' => 32,
  'John' => 40
}

# not used index in a hash students_age[0] NO!

p student_ages['Aaron']

# useful hash methods
student_ages.class
student_ages.count
student_ages.size

p student_ages.keys
p student_ages.values
# ["Aaron", "Stacy", "John"]
# [12, 32, 40]

p student_ages.entries
# [["Aaron", 12], ["Stacy", 32], ["John", 40]]

# check whether a key exists inside a hash or not
p student_ages.has_key?("Aaron")
# true

# check whether a value exists inside a hash or not
p student_ages.has_value?('12')
# false

# check to see if there is anything in the hash
student_ages.empty?

# CRUD

# Create
student_ages['Ryo'] = 21
p student_ages
# {"Aaron"=>12, "Stacy"=>32, "John"=>40, "Ryo"=>21}

# Read

p student_ages['Ryo']

# Update
student_ages['Ryo'] = 22
p student_ages
# {"Aaron"=>12, "Stacy"=>32, "John"=>40, "Ryo"=>22}

# Delete
# we delete the key
student_ages.delete('Ryo')
p student_ages
# {"Aaron"=>12, "Stacy"=>32, "John"=>40}

# look at all key, value pairs and delete for certain condition
student_ages.delete_if { |key, value| value == 12}
p student_ages
# {"Stacy"=>32, "John"=>40}

# Iterate
student_ages.each do |key, value|
  puts "#{key} is #{value}"
end
# Stacy is 32
# John is 40

# count students over 20
# a HASH is an ENUMERABLE
# https://ruby-doc.org/3.2.2/Enumerable.html
p student_ages.count { |key, value| value > 20 }
# Stacy is 32
# John is 40
# 2

cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}
p cities["Paris"]["monument"]
# "Tour Eiffel"

# return "England"
p cities["London"] # {"country"=>"England", "monument"=>"Big Ben"}
p cities ["London"]["country"]
# "England"

continent = {
  "Europe" => ["London", "Paris"],
  "America" => ["NYC", "Sao Pablo"]
}

# return all European cities
p continent["Europe"]
# ["London", "Paris"]

continent["Europe"].each do |city_name|
  #first city name is "London"
  puts cities[city_name] # get valye in cities which corresponds to city_name
  # {"country"=>"England", "monument"=>"Big Ben"}
  # {"country"=>"France", "monument"=>"Tour Eiffel"}
  puts cities[city_name]["monument"]
  # Big Ben
  # Tour Eiffel
end
