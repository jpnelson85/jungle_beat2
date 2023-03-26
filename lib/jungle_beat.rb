class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end
end