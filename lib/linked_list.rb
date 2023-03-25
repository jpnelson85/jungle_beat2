class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(new_data)
    if @head == nil
      @head = Node.new(new_data) 
    else
      current_node = @head 
      while (current_node.next_node != nil)
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(new_data)
    end
    new_data
  end

  def count
    count = 1
    if @head == nil
      count = 0
    elsif @head.next_node == nil
      count = 1
    elsif 
      current_node = @head
      while (current_node.next_node != nil)
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end

  def to_string
    string = [@head.data] 
    if @head == nil
      string = nil
    elsif @head.next_node == nil
      string.join
    elsif 
      current_node = @head
      while (current_node.next_node != nil)
        current_node = current_node.next_node
        string << current_node.data
      end
    end
    string.join(" ")
  end
end