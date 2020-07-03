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


# Has a complexity of O(n) with no tail and O(1) with tail
  def add(number)
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end

  end

  # Has a complexity of O(n) we traverse through all the list
  def get(index)
    current = @head
    counter = 0
    value = nil
    while current
      if  counter == index
        value = current.value
        break
      end
      current = current.next_node
      counter += 1
    end
    value
  end


  def display
    node = @head
    list = []

    while node
      list.append(node.value)
      node = node.next_node
    end

    list
  end

  # private

  def get_node(index)
    node = @head
    counter = 0

    while (node = node.next_node)
      return node if (counter == index-1)
      counter += 1
    end
  end


end

# Tests
list = LinkedList.new
list.add(3)
list.add(5)

p list.display
p list.get_node(1).value