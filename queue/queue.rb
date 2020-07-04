# Start with your code from LinkedList challenge.

class Node 
  attr_accessor :value, :next_node

	def initialize(value, next_node = nil )
		@value = value
		@next_node = next_node
	end
end

class LinkedList
  @tail = nil
  @head = nil
end



class Queue
  def add(number)
    # your code here
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end
  def remove
     # your code here
    return -1 if is_empty?
    value = @head.value
    @head = @head.next_node
    value
  end
  def is_empty?
  	return @head.nil?
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1