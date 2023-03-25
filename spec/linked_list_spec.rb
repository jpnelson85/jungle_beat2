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

  it 'append one sound' do
    list = LinkedList.new
    list.append('doop')
    expect(list.head.data).to eq('doop')
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

  it 'appends two sounds' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')
    expect(list.head.data).to eq('doop')
    expect(list.head.next_node).to eq('deep')
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep") 
  end

  it 'adds node to beginning as the head' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it 'inserts new data into a specified index' do 
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1,"woo")
    expect(list.insert(1,"woo")).to eq("woo")
    expect(list.count).to eq(5)
    expect(list.head.next_node.data).to eq("woo")
  end

end