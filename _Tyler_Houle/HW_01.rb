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


#### This introduction defines a welcome message and greeting for the user
def welcome_message
  puts "Welcome to the Secret Number game!\nCreated by Tyler Houle"
  puts  
end

def greeting
  puts "What is your name?"
  player_name = gets.capitalize.chomp
  puts "Hi #{player_name}!"  
end

#### This section defines the objective and rules for the game
def rules
  puts 
  puts "OBJECTIVE: Guess the secret number!"
  puts
  puts "RULES:\nThe secret number is between 1 and 10.\nYou will have 3 chances to correctly guess it.\nIf you guess correctly during your three tries, you win and the game is over.\nIf you fail to guess correctly during your three tries, you lose and the game is over."
  puts
end

#### Here is the secret number. It will be randomly generated each game between 1 and 10.
secret_number = rand(10)

#### Takes care of appropriate pluralization
def guess_count(count)
  if count == 1
    "#{count} guess"
  else
    "#{count} guess#{"es"}"
  end
end

#### Verification method to check if the user guessed correctly
def verify(secret_number, count)
  guess = gets.to_i
  if guess > secret_number
    puts
    if count == 1
      puts "Sorry! Too high. You lose."
      puts "The secret number was #{secret_number}. Game Over"
    else
      puts "Sorry! Too high."
    end
  elsif guess < secret_number
    puts
    if count == 1
      puts "Sorry! Too low. You lose."
      puts "The secret number was #{secret_number}. Game Over"
    else
      puts "Sorry! Too low."
    end
  else 
    puts
    congrats 
  end
end

#### Congratulations if the user guesses correctly
def congrats
  puts "Congratulations! You guessed the secret number!"
  puts "Game Over." 
  abort
end


####### This section pulls everything together for the user.
welcome_message
greeting
rules

3.downto(2) do |count|
  puts
  puts "You have #{guess_count(count)} remaining. What is your guess?"
  verify(secret_number, count)
end

puts
puts "You have #{guess_count(1)} remaining. What is your guess?"
verify(secret_number, 1)

