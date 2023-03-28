class LinkedList
  attr_accessor :head

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

  def prepend(new_data)
    if @head == nil
      @head = Node.new(new_data)
    else
      current_head = Node.new(new_data)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def insert(index, new_data)
    current_node = @head
    (index - 1).times do
     current_node = current_node.next_node
    end
    new_node = Node.new(new_data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
    new_data
   end

   def find(index, num_of_nodes)
    current_node = @head
    data = []
    index.times do
      current_node = current_node.next_node
    end
    num_of_nodes.times do
      data << current_node.data
      current_node.next_node
    end
    data.join(" ")
  end

  def includes?(data)
    current_node = @head
    while current_node.next_node != nil
      if (current_node.data == data)
        return true 
      end
      current_node = current_node.next_node
    end
    false
  end

  def pop
    current_node = @head
    while current_node.next_node.next_node != nil 
      current_node = current_node.next_node
    end
    last_node = current_node.next_node
    current_node.next_node = nil
    last_node.data
  end
end