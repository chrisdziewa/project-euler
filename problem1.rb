# Project Euler Multiples of 3 and 5 

sum = 0

(1...1000).each do |num|
	if num % 3 == 0 || num % 5 == 0
		sum = sum + num
	end
end

puts sum