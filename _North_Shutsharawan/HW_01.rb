def welcome
	puts "Welcome to North's Secret Number game!"
end
# We define what welcome does.

welcome
puts "What is your name?"
name = gets.chomp
puts 
# gets retrieves user input.
# gets.chomp cuts the ENTER or \n input when the user presses enter

puts "Hello #{name}. It's great to meet you!"
puts
puts "The rules for North's Secret Number game is quite simple. 
You have three chances to guess the correct number between 1 and 10."

number = rand(1..10)
num_guesses = 0
# If you called rand(1..10), it would generate a number from 1 - 10 inluding 10. 
# If you called rand)1...10), it would generate a number from 1 - 10 not including 10.

# .to_s changes a string to a number
1.times do
  puts "What is your guess?"
  guess = gets.chomp.to_i
  num_guesses += 1

  unless guess == number
    message = if guess > number
                print "Too high. You have two more chances."
              else
                print "Too low. You have two more chances."
              end
    puts message
  else
    puts "You got it! Congratulations #{name}!"
    puts "It took you #{num_guesses} guesse(s)."
    exit
  end
end
# 1.times loops the conditional logic 1 time. If you did 2.times it will loop 2 times. 

1.times do
  puts "What is your guess?"
  guess = gets.chomp.to_i
  num_guesses += 1

  unless guess == number
    message = if guess > number
                print "Too high. You have one more chance."
              else
                print "Too low. You have one more chance."
              end
    puts message
  else
    puts "You got it! Congratulations #{name}!"
    puts "It took you #{num_guesses} guesse(s)."
    exit
  end
end

1.times do
  puts "What is your last guess?"
  guess = gets.chomp.to_i
  num_guesses += 1

  unless guess == number
    message = if guess > number
                print "Whoops! You lost. GAME OVER!."
                puts "The secret number was #{number}."
              else
                print "Whoops! You lost. GAME OVER!."
                puts "The secret number was #{number}."
              end
    puts message
  else
    puts "You got it! Congratulations #{name}!"
    puts "It took you #{num_guesses} guesse(s)."
    exit
  end
end	

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

