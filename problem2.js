/* Project Euler Sum of even Fibonacci 
sequence not exceding 4000000 in the sequence */

function fibSequence(limit) {
	var prev = 1;
	var current = 1;
	var fib = 0;
	while (current < limit) {
		if ((prev + current) % 2 == 0 
			&& prev + current <= limit) {
			fib += (prev + current);
		}

		old_current = current;
		current = (prev + current);
		prev = old_current;
	}

	return fib;
}

console.log(fibSequence(4000000));