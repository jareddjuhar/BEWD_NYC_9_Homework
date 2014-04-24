require 'json'
require 'rest-client'

	def show_message(message)
		puts message
	end


	def show_new_story_notification(story)
			show_message("New Story Added! #{story[:title]}, Category: #{story[:category]}, Current Upvotes #{story[:upvotes]}")
	end


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
	
	def show_all_stories(stories)
  		stories.each do |story|
    		show_message "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
  		end
	end

	def get_stories_from_reddit
		res = JSON.load(RestClient.get('http://reddit.com/.json'))
		res["data"]["children"].map do |story|
			s = {title:story["data"]["title"], category:story["data"]["subreddit"]}
			calculate_upvotes(s)
			show_new_story_notification(s)
			s 
		end
	end


	def get_stories_from_digg
		res = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
		res["data"]["feed"].map do |story|
			s = {title:story["content"]["title"], category:story["content"]["description"]}
			calculate_upvotes(s)
			show_new_story_notification(s)
			s 
		end
	end


	def get_stories_from_mashable
		res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
		res["new"].map do |story|
			s = {title:story["title"], category:story["channel"]}
			calculate_upvotes(s)
			show_new_story_notification(s)
			s 
		end
	end

	show_message("Welcome to Teddit! A text-based news aggregator.")

	stories = get_stories_from_reddit, get_stories_from_mashable, get_stories_from_digg
	show_all_stories stories
