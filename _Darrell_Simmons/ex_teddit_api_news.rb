# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

def show_new_story_notification(story)
	s = "New Story Added! #{story[:title]}, Author: #{story[:author]}, Upvotes: #{story[:upvotes]}"	
end


def calculate_upvotes(story)
  story[:upvotes] = 1

  if story[:title].downcase.include? 'today'
    story[:upvotes] *= 5
  elsif story[:title].downcase.include? 'bacon'
    story[:upvotes] *= 8
  end

  # if story[:category].downcase == "todayilearned"
  #   story[:upvotes] *= 3
  # end
 
end

def get_stories_from_reddit
	res = JSON.load(RestClient.get('http://www.reddit.com/.json'))
	res["data"]["children"].map do |story|
		s = {title:story["data"]["title"], author:story["data"]["author"]}
		calculate_upvotes(s)
		show_new_story_notification(s)
		s
	end
end

def get_stories_from_mash
	res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
	# puts res['new']
	res["new"].map do |story|
	s = {title:story["title"], author:story["author"]}
	calculate_upvotes(s)
	show_new_story_notification(s)
	s 
	end
end

def get_stories_from_digg
	res = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
	res["data"]["feed"].map do |story|
		s = {title:story["content"]["title_alt"], author:story["content"]["author"]}
		calculate_upvotes(s)
		show_new_story_notification(s)
		s
	end
end

def show_all_stories(stories)
	stories.map do |story|
		"Story: #{story[:title]}, Author: (#{story[:author]}), Upvotes: (#{story[:upvotes]})"
	end
end



puts "Welcome to teddit"

reddit_stories = get_stories_from_reddit
mash_stories = get_stories_from_mash
digg_stories = get_stories_from_digg
puts show_all_stories(digg_stories)
puts show_all_stories(mash_stories)
puts show_all_stories(reddit_stories)


