class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  # this class must have two pointer
  @head = nil
  @tail = nil

end

class Stack < LinkedList
	def push(item)
		new_node = Node.new(item, @head)
		@head = new_node
		@tail = new_node if @tail.nil?
	end

	def pop
		raise 'Stack is empty' if @head.nil?
		value = @head.value
		@head = @head.next_node
		value
	end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3