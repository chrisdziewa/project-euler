# Project Euler Largest prime factor


def get_range(num)
	Math.sqrt(num).round
end

def is_prime(number)	
	range = get_range(number)
	i = range
	while i > 1
		if number % i == 0
			return false
		end
		i -= 1
	end
	return true
end

def largestPrimeFactor(number) 
	range = get_range(number)
	primes = []
	(2..range).each do |current|
		if (number % current == 0) && is_prime(current) 
			primes.push(current)
		end
	end
	last = primes.pop
	if last.nil?
		last = "Was prime originally"
	end
	last
end

puts largestPrimeFactor(600851475143)



