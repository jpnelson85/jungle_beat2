require 'rspec'
require './lib/node'
require './lib/linked_list'

describe LinkedList do
  it 'LinkedList exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it 'has head attribute with nil default' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end