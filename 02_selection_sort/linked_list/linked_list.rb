# frozen_string_literal: true

# Accessing an element at a specific index: O(n)
# Searching for an element: O(n)
# Inserting an element at the beginning: O(1)
# Inserting an element at the end: O(1) 
# Inserting an element at a specific index: O(n)
# Removing an element from the beginning: O(1)
# Removing an element from the end: O(n)
# Removing an element at a specific index: O(n)

require_relative 'node'

# List class
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add(value)
    node = Node.new(value)
    # first case: the head is nil, so the head is equal do our node and the tails is equal do new node (nil in this case.)
    if head.nil?
      @head = node
      @tail = node
    # second case: the head is not nil, so the tail next_next node will be our new value and the tail will be our new value too
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def delete(value)
    # first case: the list is empty
    if @head == nil
      return
    # second case: the value is the head: we will move the head to the next value, the tail will be nil if the head is nil
    elsif @head.value == value
      @head = @head.next_node
      @tail = nil if @head.nil?
    else
    current_node = @head
      while current_node.next_node != nil && current_node.next_node.value != value
        current_node = current_node.next_node
      end
      if current_node.next_node != nil
        current_node.next_node = current_node.next_node.next_node
        @tail = current_node if current_node.next_node.nil?
      end
    end
  end

  def display
    curr_node = @head
    until curr_node.nil?
      puts curr_node.value
      curr_node = curr_node.next_node
    end
  end
end

ll = LinkedList.new
ll.add(1)
ll.add(2)
ll.add(3)
ll.display
ll.delete(2)
ll.display