class Warrior
	attr_accessor :warrior_name, :warrior_race, :items, :money

	def initialize(warrior_name, warrior_race)
		@warrior_name = warrior_name
		@warrior_race = warrior_race
		@items = []
		@money = 500
	end
	
	def purchase_weapon
		puts "What would you like to buy?"
		puts "-------------------------"
		puts "Sword $100\tShield $120\tWand $80\tCancel"
		item_name = gets.to_s.capitalize
		if item_name.include?("Sword") || item_name.include?("Shield") || item_name.include?("Wand")
			item = Item.new(item_name)
			items.unshift(item)
			if @money < item.item_value
				puts "You don't have enough money for that."
				mainoptions
			else
				@money -= item.item_value
				puts "You have purchased #{item_name}."
				puts "You now have #{@money} left."
			end
		else
			if item_name.include?("Cancel")
				mainoptions
			else
				puts "We don't have what you're looking for. Please try again."
				purchase_weapon
			end
		end
	end

	def default_items
		default_item1 = Item.new('Potion')
		default_item2 = Item.new('Scroll of Town Portal')
		items << default_item1
		items << default_item2
		puts "#{warrior_race}, we're giving you a Potion and a Scroll of Town Portal."
	end

	def purchase_news
		if @money < 100
			puts "You don't have enough money for that."
			mainoptions
		else
			@money -= 100
			puts "What would you like to know about?"
			input = gets.strip.gsub(" ", "+")
			user_nytimes = Nytimes.new(input)
	   		user_nytimes.get
	    	puts user_nytimes.parsed_response
	    	puts "-------------------------"
	    end
	end	

	def item_review
		puts "You have the following:"
		items.each do |inventory|
			puts inventory
		end	
	end

	def mainoptions
		puts "You have $#{@money}. What would you like to do now?"
		puts "(1) Purchase Weapons\n(2) Purchase News ($100)\n(3) Review Items\n(4) Exit"
		while user_option = gets.strip
			case user_option
			when "1"
    			purchase_weapon
    			mainoptions
    		when "2"
    			purchase_news
    			mainoptions
			when "3"
				item_review
				mainoptions
			else
				puts "Thanks for shopping. Come again."
    			exit
    		end
  		end
	end
end


# Unused Code

# 	def check_money
# 		if @money < item.itemvalue || @money < 100
# 		puts "You've run out of money. Thanks for coming"
# 		exit
# 		end
# 	end