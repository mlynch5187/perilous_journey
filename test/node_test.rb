require "minitest/autorun"
require "minitest/pride"
require "../lib/node"

class NodeTest < MiniTest::Test

  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_a_surname
    assert_equal "Burke", @node.surname
  end

  def test_it_has_a_next_node
    assert_nil @node.next_node
  end
end
