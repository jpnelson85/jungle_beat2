require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe 'JungleBeat' do
  it 'exists' do
    jb = JungleBeat.new
    expect(jb).to be_a(JungleBeat)
  end

  it 'can add multiple nodes at once to list' do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    
    expect(jb.list.count).to eq(6)
  end

  it 'plays sound of string of node data' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.play
  end
end


