#========================================#
#                                        #
# Back-End Web Development - Homework #1 #
# Secret number game                     #
#                                        #
# Name: Piroon Tangnavarad               #
#                                        #
#========================================#


#=========#
# globals #
#=========#

$g_secret_number = 7
$g_author = "Piroon Tangnavarad"
$g_num_tries = 3


#=========#
# methods #
#=========#

# This method prints the game's welcome message
def doWelcome 
	puts "Hi! This is #{$g_author}'s secret number game!"

        player_name = getUsersName
	puts "Hi #{player_name}! Welcome, and good luck!"
        
	puts "The rules are simple, you have #{$g_num_tries} tries to guess what the secret number is." \
          << " Hint: the secret number is a number between 1-10!"
	puts "Let the secret number game begin!"
	puts
	
	return player_name
end


#This method ask for user's name, greets them and returns the name
def getUsersName
	puts "What is your name?"
	name = gets.chomp
	puts

	return name
end


#This method ask for user's guess, and return the guess
def getUsersGuess (num_guess)
	puts "What is your guess? (Number of tries you have left: #{num_guess})"
	guess = gets.chomp.to_i
	puts

	return guess
end


#This method validates the guess with the secret number
def validateGuess (num)
	if num == $g_secret_number
		correct = true
	elsif num < $g_secret_number
		correct = false
		puts "I'm sorry, your guess was too low please try again."
	else
		correct = false
		puts "I'm sorry, your guess was too high please try again."
	end

	return correct
end


#======#
# main #
#======#

player_name = doWelcome
count = $g_num_tries
win = false

while count > 0
	guess_num = getUsersGuess(count)
	correct = validateGuess(guess_num)
        if correct == true
		count = 0
		win = true
	else
		count -= 1
	end
end

if win == true
	puts "Congratulations #{player_name}, you won the game!"
else
	puts "I'm sorry #{player_name}, you ran out of tries. The secret number was #{$g_secret_number}" 
end

