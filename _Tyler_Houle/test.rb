# 

# def guess_count(count)
#   if count == 1
#     "#{count} guess"
#   else
#     "#{count} guess#{"es"}"
#   end
# end

# 5.downto(2) do |count|
#   puts "You have #{guess_count(count)} left."
#   puts "What is your guess?"
#   guess = gets.to_i
#   puts "#{guess}"
# end

def verify
  secret_number = 5
  puts "What is your guess?"
  guess = gets.to_i
  if guess > secret_number
    puts "Sorry! Too high. Guess again."
  elsif guess < secret_number
    puts "Sorry! Too low. Guess again"  
  else
    puts "Congratulations! You've guessed the secret number!"
    abort
  end  
end


verify





# def method_name
  
# end