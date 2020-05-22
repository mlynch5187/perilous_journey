require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'

class LinkedListTest < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_it_has_a_head
    assert_nil @head
  end

  def test_it_has_append
    node = @list.append("West")
    assert_equal "West", node.surname
    assert_nil node.next_node
    assert_equal node, @list.head
    assert_nil @list.head.next_node
  end

  def test_it_has_a_count
    node = @list.append("West")
    assert_equal 1, @list.count
  end

  def test_list_can_be_stringified
    node = @list.append("West")
    assert_equal "The West family", @list.to_string
  end
end
