require 'json'
require 'rest-client'

def calculate_upvotes(story)
	story[:upvotes] = 1
	if story[:title].downcase.include?('cat')
		story[:upvotes] *= 5
	elsif story[:title].downcase.include?('bacon')
		story[:upvotes] *= 8
	end

	if story[:category].downcase == 'funny'
		story[:upvotes] *= 3
	end
end


def get_stories_from_reddit
	res = JSON.load(RestClient.get('http://reddit.com/.json'))
	res["data"]["children"].map do |story|
		s = {title:story["data"]["title"], category:story["data"]["subreddit"]}
		calculate_upvotes(s)
		s 
end
end

def show_all_stories(stories)
	stories.map do |story|
		"Story: #{story[:title]}, Category: (#{story[:category]}), Current upvotes: #{story[:upvotes]}"
	end
end





puts "Welcome to Teddit! A text-based news aggregator."

stories = get_stories_from_reddit
puts show_all_stories(stories)
