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

#Setting up the variables
low_number = 1
high_number = 100
number = rand(low_number..high_number)
guesses = 6
guesses_left = guesses

#Introduction
puts "Welcome to Jared's secret number game! First, tell me your name."
player_name = gets.strip.to_s

puts "Hello #{player_name}! This is a game where you guess a number between #{low_number} and #{high_number}. Also, you will only have #{guesses} tries"


#This will be the user's first guess
puts "Ok. Now guess a number."
guess = gets.to_i
if guess>number
	puts "Too high!"
	elsif guess<number
	puts "Too low!"
    else 
    puts "Wow #{player_name}! You've got the right number on your first try. You deserve a cookie."
end
if guess==number
	exit
    else
	guesses_left-=1
end

#This will be the user's subsequent guesses. This will repeat until the user gets to 1 guess left.

until guesses_left<2
puts "Don't give up. You have #{guesses_left} guesses left. Guess another number"
guess = gets.to_i

if guess>number
	puts "Too high!"
	elsif guess<number
	puts "Too low!"
    else 
    puts "Congratulations #{player_name}! You've guessed the right number."
end

if guess==number
	exit
    else
	guesses_left -= 1
end
end

#This will be the user's last guess. I didn't think it's necessary to say whether it's too high or too low because we're revealing the number anyway.

puts "One last try"
guess = gets.to_i
if guess==number
    puts "Congratulations #{player_name}! You've guessed the right number."
	exit
end

#If the user did not guess correctly
puts "Sorry #{player_name}. You've tried #{guesses} times! The number was actually #{number}."



