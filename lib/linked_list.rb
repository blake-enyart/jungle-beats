class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def empty?
    head.nil?
  end

  def append(data)
    node = Node.new(data)
    if empty?
      self.head = node
    else
      last_node(@head).next_node = node
    end
    data
  end

  def count
    return 0 if empty?
    count_node(head, 1)
  end

  def to_string
    return '' if empty?
    return string_starter if head.tail?
    stringify_node(self.head, string_starter)
  end

  def prepend
  end

  private

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def string_starter
    head.data
  end

  def stringify_node(node, string_starter)
    return string_starter if node.tail?
    stringify_node(node.next_node, string_starter + ' ' + node.next_node.data)
  end
end
