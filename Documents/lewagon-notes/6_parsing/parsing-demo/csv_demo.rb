require "csv" # require "csv" is referencing a library
# require_relative is a local file in the directory somewhere
# everything is a string in CSV

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"


# Parsing CSV

CSV.foreach(filepath) do |row|
  # Here, row is an array of columns
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end

# First Name | Last Name | Instrument
# John | Lennon | Guitar
# Paul | McCartney | Bass Guitar
# George | Harrison | Lead Guitar
# Ringo | Starr | Drums

# With Headers

CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row['First Name']} #{row['Last Name']} played #{row['Instrument']}"
end

# John Lennon played Guitar
# Paul McCartney played Bass Guitar
# George Harrison played Lead Guitar
# Ringo Starr played Drums

# Storing CSV
# Open file with writing permissions
# CSV.open(filepath, 'wb') do |csv_file| #'wb' writing binary
#   # create array and push into file
#   csv << ["First Name", "Last Name", "Instrument"] #
# end

students = [
  %w[Juri Kato],
  %w[Aaro Randall],
  %w[John Smith]
]


CSV.open('data/students.csv', 'wb') do |csv_file|
  csv_file << ['first_name', 'last_name']
  students.each do |student|
    csv_file << student
  end
end

# first_name,last_name
# Juri,Kato
# Aaro,Randall
# John,Smith
