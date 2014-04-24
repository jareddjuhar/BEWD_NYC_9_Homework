def welcome_message 
  puts "Welcome to Teddit! A text based news aggregator. Yahtzi. Boom. Powpow."
  puts "Newsflash: The pope is religious. upvotes: 4"
end

def headline
  "Cat makes fortune by showing elderly people how to play dice"
end

def format_story(story, upvotes)
  "Story: #{story.capitalize} Current upvotes #{upvotes}"
end

welcome_message
puts format_story(headline, 7)