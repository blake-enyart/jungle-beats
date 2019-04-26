class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def count
    @list.count
  end

  def append(data)
    groomed_data = data.split
    groomed_data.each do |data|
      @list.append(data)
    end
    data
  end

  def play
    `say -r 500 #{@list.to_string}`
  end
end
