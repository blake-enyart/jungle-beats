class Node
  attr_accessor :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def tail?
    next_node.nil?
  end
end
