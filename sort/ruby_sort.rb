animals = [ 'gnu', 'zebra', 'antelope', 'aardvark', 'yak', 'iguana' ]

# sort the ruby way
result = animals.sort { | x, y | x <=> y }
puts result
