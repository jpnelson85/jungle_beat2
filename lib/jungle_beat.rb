class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    beats = data.split(' ')
    beats.each do |beat|
      @list.append(beat)
    end
    beats.join(' ')
  end

  def count
    list.count
  end
  
  def play
    `say -r 500 -v Boing #{list.to_string}`
  end
end