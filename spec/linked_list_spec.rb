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
    expect(list.head.next_node).to be_an_instance_of(Node)
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
    expect(list.insert(1,"woo")).to eq("woo")
    expect(list.count).to eq(4)
    expect(list.head.next_node.data).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'finds node element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2,1)).to eq("shi")
  end

  it 'includes?' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.includes?('deep')).to eq(true)
    expect(list.includes?('dep')).to eq(false)
  end

  it 'removes last node from list' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end