require "json"
require "open-uri"

# API
# Application Programming Interface
puts "Enter a username"
username = gets.chomp

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/#{username}"
response = URI.open(url) # gives is HTTP response

# The response has a lot of things including headers etc.
# I only get the body of the response
body = response.read

user = JSON.parse(body) # user is now a Hash
puts "#{user['name']} has #{user['public_repos']} public repos and is in #{user['location']}"
# Yann Klein has 531 public repos and is in Tokyo, JP

# Mini-app
# Ask user for username, gets.chomp into variable and interpolate

# ➜  parsing-demo git:(master) ✗ ruby api_demo.rb
# Enter a username
# yannklein
# Yann Klein has 531 public repos and is in Tokyo, JP
