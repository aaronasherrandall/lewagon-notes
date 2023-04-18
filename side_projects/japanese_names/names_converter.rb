require 'csv'
require_relative 'names_hash'

input_file = 'input.csv'
output_file = 'output.csv'

def add_space_to_name(name)
  family_name_length = NAME_LIST.key?(name.slice(0, 3)) ? 3 : 2
  family_name = name.slice(0, family_name_length)
  given_name = name.slice(family_name_length, name.length - family_name_length)
  "#{family_name} #{given_name}"
end

CSV.open(output_file, 'w') do |csv|
  CSV.foreach(input_file) do |row|
    name = row[0]
    spaced_name = add_space_to_name(name)
    row[0] = spaced_name
    csv << row
  end
end
