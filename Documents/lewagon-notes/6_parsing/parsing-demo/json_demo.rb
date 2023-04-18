require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# Serialized data means it is a string
serialized_data = File.read('data/beatles.json')

# Whenever we get an API response, it'll be in JSON
data = JSON.parse(serialized_data)

# {
#   "title": "The Beatles",
#   "beatles": [
#     {
#       "first_name": "John",
#       "last_name": "Lennon",
#       "instrument": "Guitar"
#     },
#     {
#       "first_name": "Paul",
#       "last_name": "McCartney",
#       "instrument": "Bass Guitar"
#     },
#     {
#       "first_name": "George",
#       "last_name": "Harrison",
#       "instrument": "Lead Guitar"
#     },
#     {
#       "first_name": "Ringo",
#       "last_name": "Starr",
#       "instrument": "Drums"
#     }
#   ]
# }

# How do we get to Harrison?
# Accessing the last name of the third beatle

puts data["beatles"][2]["last_name"]
# Harrison
# if it's an array, use the index
# if it's a hash, use the key

# Storing

students = [
  %w[Juri Kato],
  %w[Aaro Randall],
  %w[John Smith]
]

File.open('data/students.json', 'wb') do |file|
  file.write(JSON.generate(students)) # generate converts array or hash into string
end
# [["Juri","Kato"],["Aaro","Randall"],["John","Smith"]]
