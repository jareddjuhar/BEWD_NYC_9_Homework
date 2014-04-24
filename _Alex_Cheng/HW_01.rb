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
#	  -	Welcome the player to your game. Let them know who created the game.
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

THE_ANSWER = rand(1..10)
ATTEMPTS = 3

def welcome_messages
  puts "Welcome to Alex's secret number game"
  print "And you are...? "
  name = gets.strip.capitalize!
  puts "Greetings and welcome, #{name}. I want to play a game."
  puts "You have three tries to guess a number between 1 and 10. Guess it and you live, miss it and you die-*ahem* lose, you lose, definitely not die."
  puts "Let's begin."
end

def attempt(guess, attempts_left)
  return puts("Ugh. You win.") if guess == THE_ANSWER
  return puts("HAH. You lose! The answer was #{THE_ANSWER}") if attempts_left == 0
  puts "Uh oh. Only #{attempts_left} left!"
  puts "Psst. Try #{(guess > THE_ANSWER) ? 'lower' : 'higher'}."
  attempt get_number, attempts_left -= 1
end

def get_number
  print "Enter a number: "
  begin
    Integer(gets.strip)
  rescue
    puts "What are you, stupid? That's not a number."
    get_number
  end
end

def lets_play_a_game
  welcome_messages
  attempt get_number, ATTEMPTS - 1
end
lets_play_a_game
