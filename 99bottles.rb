def pluralize(word,number)
	return word + "s" unless number == 1
	word
end

puts "How Many Bottles?"
bottles = gets.chomp.to_i
puts ""

while bottles > 0
	puts "#{bottles.to_s} #{pluralize('bottle',bottles)} of beer on the wall! #{bottles.to_s} #{pluralize('bottle',bottles)} of beer! You take one down, pass it around! #{bottles.pred.to_s} #{pluralize('bottle',bottles.pred)} of beer on the wall!"
	bottles -= 1
end	