class Node
	attr_accessor :value, :next_node

	def initialize(value, next_node = nil)
		@value = value
		@next_node = next_node
	end

end



class Stack

	@head = nil
	@tail = nil
	@min  = nil

	def push(number)
		new_node = Node.new(number, @head)
		if is_empty?
			@tail =	new_node
			@min = new_node
		end

		@min = Node.new(number, @min) if min? > number
		@head = new_node
		return
	end

	def min?
		@min.value unless @min.nil?
	end

	def pop
		raise 'Stack is empty' if is_empty?
		@min = @min.next_node if @min.value == @head.value
		value = @head.value
		@head = @head.next_node
		value
	end

	def min
		@min.value unless @min.nil?
	end

	def is_empty?
		@head.nil?
	end

	def print
		list = []
		node = @head
		while node
			list << node.value
			node = node.next_node
		end
		list
	end

end

#Test

stack = Stack.new
stack.push(3)
stack.push(5)
# p stack.print()
puts stack.min
# => 3

stack.pop
stack.push(7)

puts stack.min
# => 3

stack.push(2)
p stack.print()
puts stack.min
# => 2

stack.pop
p stack.print()
puts stack.min
# => 3