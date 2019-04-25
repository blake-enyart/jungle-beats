class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
    data
  end
end
