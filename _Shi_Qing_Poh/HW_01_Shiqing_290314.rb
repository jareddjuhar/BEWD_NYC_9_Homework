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

# Function for welcoming player
def welcome_message
  puts "Welcome to Shiqing's Secret Number Game! \nShiqing created this game."
end

# Function for obtaining player name
def player_name
  puts "What is your name?"
  name = gets
  name_chomped = name.chomp.capitalize
  puts "Hi #{name_chomped}! How are you doing today?"
  response = gets.capitalize
  if response.include? "not"
  	puts "I am sorry, there's nothing I can do. Let's get on with the game."
  elsif response.include? "Good" or response.include? "Great" 
  	puts "I am sure you are! But you won't be if you lose!"
  else
  	puts "Okay! Good Luck with the game!"
  end
  name_chomped
end

# Function for providing instructions with the number range and number of guesses.
def instructions(max,tries)
  puts "Here are the instructions. \nI have a secret number from 1 to #{max} and you have #{tries} chances to guess that number. \nYou win if you guess correctly in #{tries} tries and I win if you don't!"
end

# Function for playing the game. This function calls other functions based on the player input - correct input, wrong input, bad input.
def game(name,max,tries)
  secret_number = rand(1..max)
  puts "Make your first guess. Type in a number when you are ready and click enter."
  guess_previous = 999999
  guess = gets.to_i
  bad_counter = 0
  for i in 1..tries
  	if guess == 0
  		bad_guess(i,guess,secret_number,name,bad_counter,tries)
  		bad_counter = bad_counter + 1
  	elsif guess == secret_number
  		hardergame = correct_guess(i,guess,secret_number,name)
  		return hardergame
  	elsif guess == guess_previous
  		puts "What are you thinking? You picked #{guess} before!"
  		wrong_guess(i,guess,secret_number,name,tries)	
  	else 
  		wrong_guess(i,guess,secret_number,name,tries)	  		
  	end
  	guess_previous = guess
  	guess = gets.to_i
  end
end

# Subroutine for the correct guess with the number of tries
def correct_guess(i,guess,secret_number,name)
  case	
  when i==1 
  	puts "I don't believe it! You got it on your first try! The number is #{secret_number}." 	
  when i==2
  	puts "I guess #{secret_number} is your lucky number. It won't be that easy next time." 	
  when i==3
  	puts "Yes you are right, the number is #{secret_number}. I guess you won, #{name}."
  else
  	puts "Okay you win. The number is #{secret_number}." 	
  end
  puts "Today is your lucky day. Congrats!"
  puts "Want to try something harder? \nType 'Yes' or 'No'."
  hardergame = gets.chomp.capitalize
  hardergame
end

# Subroutine for the wrong guess and provide user with some help. It also aborts out of the game if player used up all his/her chances.
def wrong_guess(i,guess,secret_number,name,tries)
	left = tries - i
  case
  when i==1
  	puts "You wish it was #{guess} but it is not. You have #{left} tries left. Make another guess."
  	if guess>secret_number
  	  puts "\nLet me give you a hint. Your guess is too high."
  	else
      puts "\nLet me give you a hint. Your guess is too low."
	end 
  when i==2
  	puts "Wrong again! You have #{left} tries left! Make another guess."
  	if guess>secret_number
  	  puts "\nLet me give you a hint. Your guess is too high."
  	else
      puts "\nLet me give you a hint. Your guess is too low."
	end 
  when i==tries
  	puts "You ran out of luck and squandered all your chances! Game Over #{name}! The number is #{secret_number}."
  	abort("Thank you for playing!")
  else
  	puts "Still wrong. You have #{left} tries left."
  	if guess>secret_number
  	  puts "\nLet me give you a hint. Your guess is too high."
  	else
      puts "\nLet me give you a hint. Your guess is too low."
	end 
  end
end

# Subroutine for entering a bad input.
def bad_guess(i,guess,secret_number,name,bad_counter,tries)
	left = tries-i
  	case 
  	when bad_counter==0
  		puts "Come on. WAKE UP #{name}. Type in a number. Now you have #{left} tries left. You are making it easy for me!"
  	when bad_counter==1
  		puts "Really? Try again #{name}. Type in a NUMBER not a word! You have #{left} tries left."
  	when bad_counter==2
  		puts "How many times do I need to tell you to type in a number. You might as well stop playing. You have #{left} tries left."
  	when left == 0
  		puts "Game Over #{name}. The number is #{secret_number}. You lost."
  		abort("Thank you for playing!")
      #break
  	else
  		puts "I am ignoring your input. You have #{left} tries left."
  	end


end


# Start of sequence
welcome_message
name = player_name
instructions(10,3)
puts "Got it? Type 'Yes' or 'No'"
gotit = gets.chomp.capitalize
if gotit == 'Yes'
	hardergame = 'Yes'
	j=1
	# Allow user to advance to a harder level if he/she wins the current level.
	while hardergame == 'Yes'
		num_tries = 2+j
		num_max = 10*(j**2)
		#num_max = 10*j
		hardergame = game(name,num_max,num_tries)
		j = j+1
		case
		when j == 3
			puts "So you want a challenge? Let's see how well you do the next round."
		when j == 4
			puts "Ok you are on fire. You are one lucky player."
		when j == 5
			puts "Win this round and you will receive a surprise."
		when j == 6
			puts "Sorry there's nothing harder. You have won! You must be a wizard! \nBut I lied, there's no surprise! Din see that coming, did you?"
			abort("Thank you for playing!")

		end

		
		if hardergame == 'Yes'
			instructions(10*(j**2),2+j)
			#instructions(10*j,2+j)
		else
			abort("That's fine. Thanks for playing!")
		end
	end
	puts "Game Over! Goodbye #{name}!"

else
	puts "this game is not for you then, bye!"
end


