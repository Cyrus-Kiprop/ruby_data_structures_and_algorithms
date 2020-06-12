class RecursionFibonacci

	Result = [0, 1]

	# factorial
	def self.fact_without_recursion (n)
		# factorial is given by n * (n - 1)
		( 1..n).inject(:*)
	end

	def self.fact_with_recursion(n)
		if n == 0 
			1
		else
			n * fact_with_recursion(n - 1)
		end
	end

	# fibonacci sequence
	# used to estimate the population of rabbits in a perfect environmental conditions
	# series ==> 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
	# write a function that obtains the nth term in fibonacci sequence
	def self.fib_without_recursion(n)
		# f(n) = f(n - 1) + f(n - 2) terms
		sequence = [ ]

		(0..n).each do |nth|
			if nth < 2 
				sequence << nth
			else
				sequence << sequence[-1] + sequence[-2]
			end
		end
		sequence.last
	end

# first case without memoization
	def self.fib_with_recursion(nth) 
		if nth < 3
			1
		else
			fib_with_recursion(nth - 1) + fib_with_recursion( nth - 2)		
		end
	end

	def self.fib_with_recursion_memoization(n)
		return Result[n] if Result[n]
			# if the value doenst exist do the calculation and save the result in the array
			Result[n] = fib_with_recursion_memoization(n-1) + fib_with_recursion_memoization(n-2)
	end




end

#Test cases

p RecursionFibonacci.fact_without_recursion(4)
p RecursionFibonacci.fact_with_recursion(4)
p RecursionFibonacci.fib_without_recursion(6)
p RecursionFibonacci.fib_with_recursion(6)

RecursionFibonacci.fib_with_recursion_memoization(6)

p RecursionFibonacci::Result.last
