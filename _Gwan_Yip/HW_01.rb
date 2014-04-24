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

# Styling

$styling = "****************************************************"

# Method for the greeting and capturing user's name

def greeting

	# Creating the greeting variable
	greeting = "#$styling\nWelcome to the Secret Number Game. Made by Gwan Yip\n#$styling"
	
	# Printing the greeting variable
	puts "#{greeting}"
	
	# Asking for the User's name
	puts "What is your name?"
	
	# Setting the user_name variable with the user's name
	user_name = gets.chomp
	
	# Printing the greeting witht the user's name
	puts
	puts "#$styling\nHi #{user_name}\n\nYou have 3 guesses to correctly identify the Secret\nNumber between 1 and 10. Every time you guess incorrectly you'll get a\nhint to help you figure out the correct number.\nBut remember you only have 3 guesses.\n\nGood luck!!\n#$styling"

end

# Methodd for the game engine

def guess

	# Hard coding the correct number and setting the number of attempts per game
	correct_number = 7
	attempts = 3
	
	# Establishing a loop to correspond with the maximum amount of attempts a user gets per game
	while attempts != 0 do

		puts "What is your guess?"
		# Setting the user's guess as the user_guess variable
		
		user_guess = gets.chomp

		# Using a conditional to check if the user's guess is correct
		if user_guess.to_i == correct_number

			# This is the message if a user correctly guesses the number and exits the program
			3.times do
				puts "#$styling"
			end
			puts "************* Congrats, you're amazing *************"
			3.times do
				puts "#$styling"
			end
			exit

		# These are the messages with a hint if a user does not correctly guess the number
		elsif user_guess.to_i > correct_number
			puts "#$styling\n************** Your number is too BIG **************"
		else puts "#$styling\n************* Your number is too SMALL *************"

		end

		# Deducting one go from the number of attempts a users has if they incorrectly guess the number
		attempts -= 1

		# A conditional to check if a user has any more guesses left
		if attempts != 0
			
			puts "#$styling\nYou have #{attempts} more guesses, enter a another number"
			
			# This is the message printed when a user has no more guesses left
			else
				puts "#$styling"
				puts
				puts "I'm sorry, you suck. You have no more guesses left."
				puts

				3.times do
				puts "#$styling"
				end
				puts "************* The correct answer was #{correct_number} *************"
				3.times do
				puts "#$styling"
				end
	 			exit
	 	end
	end
end

# Calling Methods

greeting()
guess()


