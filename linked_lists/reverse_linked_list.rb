# Reverse a singly linked list.
#
# Example:
#
# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:
#
# A linked list can be reversed either iteratively or recursively. Could you implement both?

# reverse linked list iterative
def reverse_linked_list(first_node)
  # 1) Set head for the new reversed list
  reversed_head = nil

  # 2) Traverse linked list
  until first_node.next.nil?
    # 3) store the remainder of the forward list
    next_node = first_node.next
    # 4) Take the current node and set its next value to be our growing reversed linked list
    first_node.next = reversed_head
    # 5) Update the value for the head of the reversed list. It will be our current item
    reversed_head = first_node
    # 6) Update the currently inspected item to be the head of whats left of the forwards list
    first_node = next_node
  end

  # 7) Return the head of the reversed list
  reversed_head
end
