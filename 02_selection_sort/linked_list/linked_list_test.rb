# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'linked_list'

# LinkedList test class
class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_add_and_display
    @list.add(1)
    @list.add(2)
    @list.add(3)
    assert_output("1\n2\n3\n") { @list.display }
  end

  def test_delete
    @list.add(1)
    @list.add(2)
    @list.add(3)
    @list.delete(2)
    assert_output("1\n3\n") { @list.display }
  end

  def test_delete_head
    @list.add(1)
    @list.add(2)
    @list.add(3)
    @list.delete(1)
    assert_output("2\n3\n") { @list.display }
  end

  def test_delete_tail
    @list.add(1)
    @list.add(2)
    @list.add(3)
    @list.delete(3)
    assert_output("1\n2\n") { @list.display }
  end
end
