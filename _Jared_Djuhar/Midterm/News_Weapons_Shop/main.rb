require_relative 'lib/warrior'
require_relative 'lib/inventory'
require_relative 'lib/nytimes'

######################

def create_warrior
	puts "What's your name?"
	warrior_name = gets.strip

	puts "What's your warrior class?\nMage\nPaladin\nAssassin"
	warrior_race = gets.strip.capitalize

	Warrior.new(warrior_name, warrior_race)
end

puts "Welcome to the News & Weapons Shop."

warrior = create_warrior
warrior.default_items
warrior.mainoptions