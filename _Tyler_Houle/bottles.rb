def bottle_count(count)
  if count == 1
    "#{count} bottle"
  else
    "#{count} bottle#{"s"}"
  end
end

99.downto(2) do |count|
  puts "#{bottle_count(count)} of beer on the wall"
  puts "#{bottle_count(count)} of beer"
  puts "You take one down and pass it around,"
  puts "#{bottle_count(count - 1)} of beer on the wall!"
  puts
end
  puts "1 bottle of beer on the wall"
  puts "1 bottle of beer"
  puts "You take one down and pass it around,"
  puts "No more bottles of beer on the wall :-("
  puts