puts "Enter a name:"
name = gets.downcase.capitalize.chomp
puts "Hello, #{name}. Ready?\n\n"

#grab first letter
originalPrefix = name[0]

#get root of name. Vowel-starting names are kept whole.
if name[0].downcase =~ /[aeiou]/
	nameRoot = name.downcase
else
	nameRoot = name[1,name.length]
end

#determine if there is a blend prefix and fetch if needed
Prefix = ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr", "nth", "sch", "scr", "shr", "spl", "spr", "squ", "str", "thr"]
Prefix.each do |prfx|
	if name[0,prfx.length].downcase == prfx.downcase
		originalPrefix = name[0, prfx.length]
		nameRoot = name[prfx.length,name.length]
	end
end

puts "#{name}, #{name} bo-B#{nameRoot}\r\nBanana-fana fo-F#{nameRoot}\r\nFee-Fi-mo-M#{nameRoot}\r\n#{name}!"