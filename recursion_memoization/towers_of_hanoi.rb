def hanoi(n, source, aux, target)
  if n > 0
    hanoi(n-1, source, target, aux)
    target << source.pop()
    hanoi(n-1, aux, source, target)
  end
  target
end

p hanoi(4, [1,2,3,4], [], [])

# counting steps
def move_disk(from, to)
  "#{from}->#{to}"
end
def hanoi(n, source, intermediate, target)
  if n > 0
    hanoi(n-1, source, target, intermediate)
    puts move_disk(source,target)
    hanoi(n-1, intermediate, source, target)
  end
end

def hanoi_steps(number_of_discs)
  # your code here
  n = number_of_discs
hanoi(n, 1, 2, 3 )
end

hanoi_steps(2)
# => 1->2
#    1->3
#    2->3

hanoi_steps(3)
# => 1->3
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3

