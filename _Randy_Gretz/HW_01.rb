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

secret_number = 6

puts "Welcome to extra super very secret number game!"
puts "~~~~~~~~~~~~~~~~~~ created by ~~~~~~~~~~~~~~~~~" 
puts "~~~~~~~~~~~~~~~~~~ Randy Gretz ~~~~~~~~~~~~~~~~"
puts "\nWhat's your name?"
# set variable to player's entry
player_name = gets.strip
puts "\nHi, #{player_name}!  You have 3 tries to guess a number between 1 and 10"
puts "\nEnter your first guess:"
# set variable for player's guess input, remove spacing, and convert to integer
guess = gets.strip.to_i
# make comparison between the guess and the answer
if guess > secret_number
	puts "\nToo high!"
	# set variable to make game continue
	game = 1
elsif guess < secret_number
	puts "\nToo low!"
	# set variable to make game continue
	game = 1
else
	puts "\nBINGO! What are you, some kind of mind reader?"
	puts "\n<<<<<<<<<<<<<<<<<<< WINNER >>>>>>>>>>>>>>>>>>>"
	# set variable to make game end
	game = 0
end
# Allow user to continue guessing based on outcome/variable response from above
if game == 1
	then
		puts "\nYou've got 2 more tries! Enter your second guess:"
		# set variable for player's guess input, remove spacing, and convert to integer
		guess = gets.strip.to_i
		# make comparison between the guess and the answer
		if guess > secret_number
			puts "\nToo high!"
			# set variable to make game continue
			game = 1
		elsif guess < secret_number
			puts "\nToo low!"
			# set variable to make game continue
			game = 1
		else
			puts "\nBINGO! It only took you 2 tries!"
			puts "\n<<<<<<<<<<<< WINNER >>>>>>>>>>>>"
			# set variable to make game end
			game = 0
		end
end			
# Allow user to continue guessing based on outcome/variable response from above
if game == 1
	then
		puts "\nYou've got 1 more try! Enter your last guess:"
		# set variable for player's guess input, remove spacing, and convert to integer
		guess = gets.strip.to_i
		# make comparison between the guess and the answer
		if guess > secret_number
			puts "\nToo high!"
		elsif guess < secret_number
			puts "\nToo low! Better luck next time"
			puts "\n<<<<<<<<<<<<<<< GAME OVER >>>>>>>>>>>>>>>"
		else
			puts "\nBINGO! Third time's the charm"
			puts "\n<<<<<<<<<<< WINNER >>>>>>>>>>>"
		end
# I'm not going to tell them the answer, it's fixed rather than randomly generated so telling them would ruin it!		
end	











