puts "Welcome to an awesome number guessing game that Nick Madrid created."

puts "What is your name?"
name = gets.strip
puts "Hi #{name}!"

puts "Before we get started let's review a few housekeeping items."
puts "1. Your goal is to guess the number I have chosen. It's between 1 and 10."
puts "2. You only have 3 guesses."
puts "3. You get an awesome prize if you guess it."

secret_number = 9
#first guess
puts "What is your first guess?"
guess1 = gets.strip.to_i #convert value to integer

if guess1 > secret_number
		puts "Too high"
elsif guess1 < secret_number
		puts "Too Low"
else 
		puts "You guessed my number on the first try! You may exit the game."
		exit #aborts the application with the correct guess
end

#second guess
puts "You have two guesses left. What is your second guess?"
guess2 = gets.strip.to_i #convert value to integer

if guess2 > secret_number
		puts "Too high"
elsif guess2 < secret_number
		puts "Too Low"
else 
		puts "You guessed my number on the secondy try! You may exit the game."
		exit #aborts the application with the correct guess
end

#third and final guess
puts "You have one left. What is your last guess?"
guess3 = gets.strip.to_i #convert value to integer

if guess3 > secret_number
		puts "Too high"
elsif guess3 < secret_number
		puts "Too Low"
else 
		puts "You guessed my number on the third and final try! You may exit the game."
		exit #aborts the application with the correct guess
end

puts "You didn't guess my number in three attempts. The number was 9 but I bet you were close."

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

