number = 7

puts "Welcome to Jared's secret number game!"
puts "You must guess a number between 1 and 10. Also, you will only have 3 tries"

puts "Ok. Now guess a number"
guess = gets.to_i
if guess> number
	puts "Too high!"
	elsif guess<number
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==number
	exit
end

puts "Don't give up. Guess another number"
guess = gets.to_i
if guess>number
	puts "Too high!"
	elsif guess<number
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==number
	exit
end

puts "One last try"
guess = gets.to_i
if guess>number
	puts "Too high!"
	elsif guess<number
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==number
	exit
end

puts "Sorry you've tried 3 times! Game over"

