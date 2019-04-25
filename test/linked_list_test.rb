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
  end

  def test_count_method

    assert_equal 0, @linked_list.count

    @linked_list.append('doop')

    assert_equal 1, @linked_list.count
  end

  def test_to_string_method

    assert_nil @linked_list.to_string

    @linked_list.append('doop')
    actual = @linked_list.to_string

    assert_equal 'doop', actual
  end
end

# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
