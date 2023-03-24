require './lib/node'
require './lib/linked_list'

class LinkedList
  attr_reader :head,
              :append

  def initialize
    @head = nil
    @append = append
  end