puts "Welcome to Jared's secret number game!"
puts "You must guess a number between 1 and 10. Also, you will only have 3 tries"

puts "Ok. Now guess a number"
guess = gets.to_i
if guess>7
	puts "Too high!"
	elsif guess<7
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==7
	exit
end

puts "Ok. Now guess another number"
guess = gets.to_i
if guess>7
	puts "Too high!"
	elsif guess<7
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==7
	exit
end

puts "Ok. Now guess another number. Last try"
guess = gets.to_i
if guess>7
	puts "Too high!"
	elsif guess<7
	puts "Too low!"
    else 
    puts "Congratulations you guessed the right number!"
end
if guess==7
	exit
end

puts "Sorry you've tried 3 times! Game over"

