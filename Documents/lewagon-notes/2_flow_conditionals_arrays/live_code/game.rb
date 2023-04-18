# rock beats scissors R - S
# paper beats rock    P - R
# scissors beat paper S - P

# Psuedo Code
# 1. Display list of options
# 2. Player choose option
# 3. Computer chooses randomly
# 4. Compare both options
# 5. Show result
array = ["rock", "paper", "scissors"]

puts "What do you choose: rock, paper or scissors?"
user_choice = gets.chomp
computer_choice = array.sample

if user_choice == computer_choice
  puts "Draw. The computer choice was #{computer_choice}"
elsif (user_choice == "rock" && computer_choice == "scissors") ||
  (user_choice == "paper" && computer_choice == "rock") ||
  (user_choice == "scissors" && computer_choice == "paper")
  puts "You win! The computer choice was #{computer_choice}"
else
  puts "You lose! The computer choice was #{computer_choice}"
end
