class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
    data
  end

  def count
    array = []
    if @head
      array << @head
      array.count
    else
      0
    end
  end

  def to_string
    @head.data if @head
  end
end
