class Item
	attr_accessor :item_name, :item_value

	def initialize(item_name)
		@item_name = item_name
		determine_value
	end

	def determine_value
		case item_name
		when "Sword"
			@item_value = 100
		when "Shield"
			@item_value = 120
		when "Potion"
			@item_value = 10
		when "Scroll of Town Portal"
			@item_value = 20
		else "Wand"
			@item_value = 80
		end
	end

	def to_s
    "#{@item_name}"
 	end
end