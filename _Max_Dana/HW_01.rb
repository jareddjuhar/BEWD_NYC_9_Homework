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

# Welcome Player
def welcome_player
  puts "Welcome to Secret Number, a fake game by Max Dana."
  print "Please enter your name to play: "
  name = gets.chomp
  puts "Welcome, #{name}.\nThe rules of Secret Number are very simple.\nI think of a secret number, you try to guess it.\nYou have three guesses."
  return name
end


def play_game
  # Initialize guess count and secret number
  player_name = welcome_player
  guess_count = 3
  number = rand(1..10)

  # Initialize player messages, guess count and secret number
  msg_start = "I'm thinking of a number between 1 and 10.\nWhat is your first guess, #{player_name}?"
  msg_high = "That's a bit too high."
  msg_low = "That's a bit too low."
  msg_win = "OMG, you totally read my mind. Congratulations, #{player_name}! :-)"
  msg_lose = "LOL, you're not very good at this. Try again some other time, #{player_name}."

  # Get guess from player and check to see if it matches number
  while guess_count > 0 do
  
    # Display appropriate message for guess_count
    if guess_count == 3
  	  puts "#{msg_start}"
    else
      puts "You have #{guess_count} guesses left. What is your next guess?"
    end
  
    # Get guess from player and decrease guess_count
    guess = gets.chomp.to_i
    guess_count -= 1
    
    # Check to see if guess is a winner  
    if guess == number
  	  puts "#{msg_win}"
  	  guess_count = 0 # not sure how to get out of this loop so setting guess_count to 0
    elsif guess > number && guess_count != 0
      puts "#{msg_high}"
    elsif guess < number && guess_count != 0
      puts "#{msg_low}"
    else
  	  puts "#{msg_lose}"
    end
  end
end


play_game

