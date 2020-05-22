require_relative "node"

class LinkedList
  attr_reader :head

  def initialize()
    @head = nil
  end

  def append(word)
    return @head = Node.new(word) if @head.nil?
    node = @head
    until node.next_node == nil
      node = node.next_node
    end
    node.next_node = Node.new(word)
  end

  def count
    node = @head
    number = 1
    until node.next_node == nil
      number += 1
      node = node.next_node
    end
    number
  end

  def to_string
    "The #{@head.surname} family"
  end
end
