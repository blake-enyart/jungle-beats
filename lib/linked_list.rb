class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @node_array = []
  end

  def append(data)
    if !@head
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end
    data
  end

  def count
    if @head && !@head.next_node
      @node_array << @head
      @node_array.count
    elsif @head && @head.next_node
      @node_array << [@head, @head.next_node]
      @node_array.count
    else
      0
    end
  end

  def to_string
    string = ''
    if @head && !@head.next_node
      string << @head.data
    elsif @head && @head.next_node
      string << @head.data + ' ' + @head.next_node.data
    end
  end
end
