require './lib/node'
require './lib/linked_list'

class LinkedList
  attr_reader :head,
              :append

  def initialize
    @head = nil
    @append = append
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data, nil)
    else
      last_node = @head
      while (last_node.next_node != nil)
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(data, nil)
    end
  end