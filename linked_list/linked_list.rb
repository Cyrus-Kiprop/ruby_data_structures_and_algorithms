class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList

  # this class must have two pointer
attr_reader :tail
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


  def print
    node = @head
    list = []

    while node
      list.append(node.value)
      node = node.next_node
    end

    list
  end

  def add_at(index, item )
    new_node = Node.new(item)
    if index == 0
      new_node.next_node = @head
      @head = new_node
      @tail = @head.next_node if @tail = @head
    else
      prev_node = previous_node(index)
      current = prev_node.next_node
      return if prev_node.nil?

      new_node.next_node = current
      prev_node.next_node = new_node
      @tail = new_node if (@tail == current)
    end
  end

  def remove(index)

    if index == 0
     @head = @head.next_node
   else
      prev_node = previous_node(index)
      current = prev_node.next_node
      if current
      prev_node.next_node = prev_node.next_node.next_node
      @tail = prev_node if @tail == current
      end

    end
  end



  private

  def previous_node(index)
    node = @head
    counter = 0
    while node && (counter == (index - 2))
      node = node.next_node
      counter += 1
    end
    node
  end

  def get_node(index)
    node = @head
    counter = 0

    while node && counter < index
      node = node.next_node
      counter += 1
    end
     node
  end


end

# Tests
list = LinkedList.new
list.add(3)
list.add(5)
list.add_at(0,8)
list.add_at(1,7)

p list.print
