puts "Welcome to the Secret Number Game, where you have three guesses to figure out the secret number, which will fall between one and ten. Created by Smith Inc."
puts "What's your name?"
player_name=gets.chomp.capitalize

puts "Hi #{player_name}!"
# Greets the player, and asks for their name. Takes name input and capitalizes it for every other usage hereafter.

guesses = 2
counter = 1
# defines the number of guesses alotted, and also creates a counter for the number of guesses for output to the player.

secret_number = 1 + rand(10)
# defines the secret number to be randomly generated
# puts "Secret number: #{secret_number}"
# line 14 can be used for testing purposes, to ensure code is working correctly.

loop do
    puts "Guess #{counter}: "
    counter += 1
    current_guess = gets.chomp.to_i
    # created a loop for guess prompts and uses the counter, which increases by 1 for each guess. The player input will be taken and convereted into an integer
        if guesses == 0
                puts "Sorry, #{player_name}, you lose!"
                break
        # once the var "guesses" reaches the value of "0", the program will output the loser message and exit. The number of guesses is decremented each time the player inputs a number, as seen on lines 27 and 31.
    elsif current_guess < secret_number
                guesses -= 1
        puts "Too small. Guesses left: #{guesses}." 

    elsif current_guess > secret_number 
                guesses -= 1
        puts "Too big. Guesses left: #{guesses}."

        elsif current_guess == secret_number
        puts "You found the secret number! Congratulations #{player_name}!"
        break
        # This message displays when the player wins the game, and then exits.
        end
end