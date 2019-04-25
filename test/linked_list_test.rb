require './test/test_helper'

class LinkedListTest < Minitest::Test

  def setup
    @linked_list = LinkedList.new
  end

  def test_it_exists

    assert_instance_of LinkedList, @linked_list
  end

  def test_attr_return_correctly

    assert_nil @linked_list.head
  end

  def test_append_method

    assert_nil @linked_list.head

    actual = @linked_list.append('doop')

    assert_equal 'doop', actual
    assert_instance_of Node, @linked_list.head
    assert_equal 'doop', @linked_list.head.data
    assert_nil @linked_list.head.next_node

    actual = @linked_list.append('deep')

    assert_equal 'deep', actual
    assert_instance_of Node, @linked_list.head
    assert_equal 'doop', @linked_list.head.data
    assert_instance_of Node, @linked_list.head.next_node
    assert_equal 'deep', @linked_list.head.next_node.data

    actual = @linked_list.append('dop')

    assert_equal 'dop', actual
    assert_instance_of Node, @linked_list.head
    assert_equal 'doop', @linked_list.head.data
    assert_instance_of Node, @linked_list.head.next_node.next_node
    assert_equal 'dop', @linked_list.head.next_node.next_node.data
  end

  def test_count_method
    assert_equal 0, @linked_list.count

    @linked_list.append('doop')

    assert_equal 1, @linked_list.count

    @linked_list.append('deep')

    assert_equal 2, @linked_list.count

    @linked_list.append('dop')

    assert_equal 3, @linked_list.count
  end

  def test_to_string_method
    assert_equal '', @linked_list.to_string

    @linked_list.append('doop')
    actual = @linked_list.to_string

    assert_equal 'doop', actual

    @linked_list.append('deep')
    actual = @linked_list.to_string

    assert_equal 'doop deep', actual

    @linked_list.append('dop')
    actual = @linked_list.to_string

    assert_equal 'doop deep dop', actual
  end

  def test_prepend_method
    assert_equal '', @linked_list.to_string

    @linked_list.append('doop')
    actual = @linked_list.to_string

    assert_equal 'doop', actual

    @linked_list.append('deep')
    actual = @linked_list.to_string

    assert_equal 'doop deep', actual

    @linked_list.prepend('suu')
    actual = @linked_list.to_string

    assert_equal 'suu doop deep', actual
  end

  def test_insert_method
    assert_equal '', @linked_list.to_string

    @linked_list.append('doop')
    actual = @linked_list.to_string

    assert_equal 'doop', actual

    @linked_list.append('deep')
    actual = @linked_list.to_string

    assert_equal 'doop deep', actual

    @linked_list.insert(1, 'suu')
    actual = @linked_list.to_string

    assert_equal 'doop suu deep', actual
  end
end

# > require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
