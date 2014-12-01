/* Project Euler Multiples of 3 and 5 */
function adder(number) {
	var sum = 0;
	for (var i = 0; i < number; i++) {
		if(i % 3 == 0 || i % 5 == 0) {
			sum = sum + i;
		}
	}
	return sum;
}

console.log(adder(1000));