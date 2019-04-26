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

  def prepend(data)
    node = Node.new(data)
    node.next_node = head
    self.head = node
  end

  def insert(location, data)
    return 'Location out of range' if location > count
    node = Node.new(data)
    prior_node = node_at(head, location - 1)
    next_node = node_at(head, location)
    prior_node.next_node = node
    node.next_node = next_node
    node
  end

  def find(location, amount)
    node = node_at(head, location)
    return string_starter(node) if amount == 1

    counter = 0
    string = ''

    until counter == amount
      string << node.data + ' '
      node = node.next_node
      counter += 1
    end
    string = string.strip
    string
  end

  def includes?(data)
    string = self.to_string
    string.include?(data)
  end

  def pop(node=head)
    new_tail = node_at(head, count() - 2)
    old_tail = new_tail.next_node
    new_tail.next_node = nil
    old_tail.data
  end

  private

  def node_at(node, location, counter= 0)
    return node if location == counter
    node_at(node.next_node, location, counter += 1)
  end

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def string_starter(node=head)
    node.data
  end

  def stringify_node(node, string_starter)
    return string_starter if node.tail?
    stringify_node(node.next_node, string_starter + ' ' + node.next_node.data)
  end
end
