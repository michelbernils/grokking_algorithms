# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'node'

# Node test class
class NodeTest < Minitest::Test
  def test_node_creation
    node = Node.new(1)
    assert_equal(1, node.value)
    assert_nil(node.next_node)
  end

  def test_value_assignment
    node = Node.new(1)
    node.value = 2
    assert_equal(2, node.value)
  end

  def test_next_node_assignment
    node1 = Node.new(1)
    node2 = Node.new(2)
    node1.next_node = node2
    assert_equal(node2, node1.next_node)
  end
end
