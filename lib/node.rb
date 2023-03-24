require 'rspec'
require './lib/node'

describe Node do
  it 'a node exists' do
    node = Node.new('plop')
    expect(node).to be_a(Node)
  end