require './test/test_helper'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new('plop')
  end

  def test_it_exists

    assert_instance_of Node, @node
  end
end
