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


  # def add_at(index, item)
  #   #empty list
  #   new_node = Node.new(item)

  #   if (index == 0) && @head.nil? && @tail.nil?
  #    add(item)
  #   elsif index == 0 && @head.next_node.nil?
  #     new_node.next_node = @head
  #     @head = new_node
  #     @tail = @head.next_node
  #   elsif index == 0 &&  @head.next_node
  #     new_node.next_node = @head
  #     @head = new_node
  #   else
  #     previous_node = get_node(index)
  #     return unless previous_node
  #     @tail = new_node unless previous_node.next_node
  #     new_node.next_node = previous_node.next_node
  #     previous_node.next_node = new_node
  #   end
  # end

   def add_at(index, item)
    new_node = Node.new(item)
    if @head.nil? && @tail.nil? & (index == 0)
    @head = new_node
    @tail = new_node
    elsif index == 0 && @head.next_node
      new_node.next_node = @head
      @head = new_node
    elsif index == 0 && @head.next_node.nil?
      new_node.next_node = @head
      @head = new_node
      @tail = @head.next_node
    else
      #get the node at that specific index
      previous = get_node(index)
      return 'index out of range' unless previous
      new_node.next_node = previous.next_node
      previous.next_node = new_node
    end
  end

  def is_empty?()
    @head.nil? && @tail.nil?
  end

  def remove(index)
    current = nil
    #get the previous and the next nodes
    previous = find_before(index)
    current = previous.next_node unless previous.nil?
    if index == 0
      return if is_empty?
      if  @head.next_node.nil?
        @head = nil
        @tail = nil
      else
      @head = @head.next_node
      end
    elsif current
      previous.next_node = current.next_node
      @tail = previous if current.next_node.nil?
    else
      return
    end
  end

private

  def find_before(index)
    return nil if index == 0
    node = @head
    value = nil
    counter = 0
    while node
      if (counter ==(index - 1))
        value = node
        break
      end
      node = node.next_node
      counter += 1
      node = node.next_node
    end
    value
  end

  def get_node(index)
    counter =  0
    value = nil
    node = @head
    while node
      if counter == (index- 1)
        value = node
        break
      end
      node = node.next_node
      counter += 1
    end
    value
  end

end

# Tests
list = LinkedList.new
list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

list.remove(2)

#13,3,11,5

puts list.get(0)
# => 13
puts list.get(1)
# => 11
# list.remove(1)
#  11



p list.get(2)

p list.get(3)
# => nil