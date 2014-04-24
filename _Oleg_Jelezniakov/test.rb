#--Start of the Game: request for name
puts "Enter your full name:"
name = gets
#---------game variables:
answer = 4				#-secret number (replaceable)
num = 0					#-number guess supplied
tries = 3				#-attempts given to guess the secret number (replaceable)
num_range_limit = 10	#-set range limit, replaceable highest number in the range

# valiable outcome of the game set to "lost"- will be overriden by "won" later in else-if
game_outcome = "You have lost
				"
#-method to indicate status where each guess landed
def hint(x, y, z)
	if x > y && x <= z
		"Your number is too high"
	elsif x < y
		"Your number is too low"
	elsif x > z
		"Your number is outside the range"				
	end	
end

# - method to capitalize all parts of player's name provided
def titleize(str)
  str.split(" ").map(&:capitalize).join(" ")
end

# - option to skip providing name and go by default "Player"
player_name = titleize(name).chomp
if player_name == ""
	player_name = "Player"
end

# - Name and Rules of the game are replaceable for the Greeting and Game Intro strings
game_name = "secret number".upcase
game_rules = "
		GAME RULES: 
		Guess a number from 1 to #{num_range_limit} 
		You have #{tries} attempts
		
		If your guess is outside the range, 
		you may continue
		but your attempt will be wasted.
		
		If you guess the secret number 
		before #{tries} attempts - 
		you will have won the game and it'll stop.
		
		If you do not guess within you #{tries} attempts,
		you will lose and the game will exit too.
		Remember, it's all in your head
		"

response_greeting = "Hello dear #{player_name}, great to meet you!"
response_game_intro = " 
                       Welcome to our game 
                       -- #{game_name} --
                       #{game_rules}
                       Ready to begin: (Y)es/(N)o?
                      "
#-----------------------Greeting and introducing game's rules as well as requesting confirmation to prceed 
puts response_greeting
puts response_game_intro

# - Once confirmed Y/N the game starts or exits accordingly. The responses are made NOT cap sensitive by cap method equalizing
start_conf = gets.chomp.capitalize
if start_conf == "y".capitalize || start_conf ==""
		
		# - the dual condition keeps the loop going, while the secret number is not guessed AND only during set attempts/tries
		while num != answer && tries != 0 		
			tries -=1
				print "Enter a number from 1 to #{num_range_limit}: "
					   		num = gets.chomp.to_i
						   		if num != answer     # - each wrong attempt is noted with remaining attempts and guess status
						        		puts "Wrong! Remaining attempts: #{tries}. #{hint(num, answer, num_range_limit)}"  
									end	      
								end
# - conditional if - statement determins the end game comment via string and game_outcome variable (defined above) depending whether won or lost
	if num == answer 
		game_outcome = "You have won. Congratulations!
		               "
			elsif num > num_range_limit			
		end
						puts "\nGame over! " + game_outcome
					else 
						puts "You pressed (N)o. Good-bye!
						"
end
	