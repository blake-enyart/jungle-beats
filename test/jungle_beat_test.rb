require './test/test_helper'

class JungleBeatTest < Minitest::Test

  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists

    assert_instance_of JungleBeat, @jb
  end

  def test_attr_return_correctly

    assert_instance_of LinkedList, @jb.list
    assert_nil @jb.list.head
  end

  def test_append_method
    @jb.append("deep doo ditt")

    assert_equal 'deep', @jb.list.head.data
    assert_equal 'doo', @jb.list.head.next_node.data
    assert_equal 3, @jb.count
  end
end
