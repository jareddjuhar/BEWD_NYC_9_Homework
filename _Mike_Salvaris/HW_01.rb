###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

# Welcomes users and gets their name and first guess
puts "Welcome to the Secert Number game created by Mike Salvaris"
puts "What is your name?"
first_name = gets.chomp
first_name.capitalize!
puts "Welcome #{first_name}"
puts "Here are the rules: You have 3 tries to guess a number between 1 and 10"
puts "What's your first guess?"
guess = gets.chomp
guess = guess.to_i
# Establishes secret number and guess count 
secret_number = rand(1..10)
guess_count = 3
# Loop that gives feedback to users if they are too low or too high, and adjusts the count of guesses accordingly.  If the guess count is 0 then game is ended
while guess != secret_number do
  if guess < secret_number
	  puts "Nope! Higher"
	  guess_count = guess_count -1
  else guess > secret_number
	  puts "Nope! Lower"
	  guess_count = guess_count -1
  end
  abort("Sorry, you lost! Game over.  The secret number was #{secret_number}") unless guess_count > 0
  puts "You only have #{guess_count} guesses left!"
  puts "What's your next guess?"
  guess = gets.chomp
  guess = guess.to_i
end
# Executes if successful guess
if guess == secret_number
  puts "Congratulations you've won!"
end

