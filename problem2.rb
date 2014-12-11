# Project Euler Sum of even Fibonacci 
# sequence not exceding 4000000 in the sequence

def fib(limit)
	fib = 0
	prev = 1
	current = 1
	while current < limit
		if (prev + current).even? && (current + prev) < limit
			fib += (prev + current)
		end

		old_current = current
		current = prev + current
		prev = old_current
	end
	fib
end

puts fib(4000000)