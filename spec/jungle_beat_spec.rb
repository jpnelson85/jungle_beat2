require 'rspec'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'

RSpec.describe 'JungleBeat' do
  it 'exists' do
    jb = JungleBeat.new
    expect(jb).to be_a(JungleBeat)
  end

  it 'has head value' do
    jb = JungleBeat.new
    expect(jb.list.head).to be(nil)
    end
  end

  it 'can add multiple nodes at once to list' do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt")).to eq(jb.list.to_string)
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    expect(jb.list.count).to eq(3)
  end

  it 'can add multiple nodes via different append instances' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    expect(jb.list.count).to eq(6)
  end
    
  it 'can add multiple nodes all in one append instance' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.list.count).to eq(6)
  end

  it 'appends only specified data to list' do
    jb = JungleBeat.new("deep")
    jb.append("Mississippi")
    expect(jb.count).to eq(1)
    expect(jb.all).to eq("deep")
  end

  it 'adds new data to front of list' do
    jb = JungleBeat.new("deep")
    jb.append("Mississippi")
    jb.prepend("tee tee tee Mississippi")
    expect(jb.all).to eq("tee tee tee deep")
  end

  it 'plays sound of string of node data' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.play)
  end

  it 'plays sound at specified rate' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    jb.rate = 100
    expect(jb.play)
  end

  it 'resets rate at which sound is played' do
    jb = JungleBeat.new("deep dop dop deep")
    jb.rate = 100
    jb.reset_rate
    expect(jb.play)
  end

    
  it 'plays default voice' do
    jb = JungleBeat.new("scoopity doopity boopity bop")
    jb.rate = 100
    expect(jb.play)
  end

  it 'plays different voice' do
    jb = JungleBeat.new("scoopity doopity boopity bop")
    jb.rate = 100
    jb.voice = "Daniel"
    expect(jb.play)
  end

  it 'plays default voice and default rate' do
    jb = JungleBeat.new("scoopity doopity boopity bop")
    jb.rate = 100
    jb.voice = "Daniel"
    jb.reset_rate
    jb.reset_voice
    expect(jb.play) 
end