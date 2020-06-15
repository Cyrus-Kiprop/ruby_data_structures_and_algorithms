def print_bottles(n)
	if n == 0
	  p "No more bottles to print"	
	else
	p	"#{n} bottles of bear on the wall"

	print_bottles(n-1)
	 end
end

p print_bottles(6)


# recup of the fibonacci sequence

def fibonacci(n)
	sequence = []
	(0..n).each do |index|
		if index < 2 
			sequence << index
		else
			sequence << fibonacci(index-1) + fibonacci(index-2)
		end
	end
	 sequence.last
end

p fibonacci(6)


def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

p fib(6)