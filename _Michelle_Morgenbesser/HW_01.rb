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

def secret_number
  2
end

def author
  "Max Miller"
end

def get_name
  @name ||= gets.chomp.capitalize
end

def welcome_messages
  puts "Welcome to Secret Number, created by #{author}"
  puts "What is your first name?"
  name = get_name
  puts "Hi #{name}! OK, ready? Guess a number between 1 and 10. You have three tries to get it right."
end

def guess_response(string, tries_left)
  tries_left > 1 ? "#{string} Guess again, #{@name}." : "#{string} Better luck next time #{@name}."
end

def play_game
  tries_left = 3
  welcome_messages
  finished = false

  loop do
    break if finished || tries_left == 0
    guess = gets.to_i
    if (guess > 10) || (guess < 1)
      puts guess_response("Hey, your guess has to be between 1 and 10!", tries_left)
    elsif guess < secret_number
      puts guess_response("Too low.", tries_left)
    elsif guess > secret_number
      puts guess_response("Too high.", tries_left)
    elsif guess == secret_number
      finished = true and puts "You got it, #{@name}!"
    end
    tries_left -= 1
  end
end

play_game

