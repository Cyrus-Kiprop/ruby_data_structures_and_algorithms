def hanoi(n, source, aux, target)
	if n > 0
		hanoi(n-1, source, target, aux)
		target << source.pop()
		hanoi(n-1, aux, source, target)
	end
	target
end

p hanoi(1, [1], [], [])