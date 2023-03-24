require 'rspec'
require './lib/node'

describe Node do
  it 'a node exists' do
    node = Node.new('plop')
    expect(node).to be_a(Node)
  end

  it 'next_node equals nil as default' do
    node = Node.new('plop')
    expect(node.next_node).to eq(nil)
  end
end