# Remove all elements from a linked list of integers that have value val.
#
# Example:
#
# Input:  1->2->6->3->4->5->6, val = 6
# Output: 1->2->3->4->5

# recursive
def remove_elements(head, val)
  # 1) return nil if head is nil
  return head if head.nil?

  # 2) set the next value equal to the return of this method.
  head.next = remove_elements(head.next, val)

  # 3) at the end of our recursive calls, if the current node is val
  if head.val == val
    # 4) Set the current node equal to the next node (it will equal nil at the end of the list)
    head.next
  else
    # 5) else just return the node unchanged
    head
  end
end

# iterative
def remove_elements(head, val)
  # 1) if head exists and is equal to val we skip it
  while head&.val == val
    head = head.next
  end

  # 2) once we've dealt with the leading heads we return nil if head is nil
  return head if head.nil?

  # 3) send outa runner
  current = head

  # 4) while the runner is still going
  until current.next.nil?
    # 5) if the next value is equal to the current value
    if current.next.val == val
      # 6) we set the next value equal to the next next value
      current.next = current.next.next
    else
      # 7) if it's not, we set the next value equal to the next value
      current = current.next
    end
  end

  # 8) finally return the initial head
  head
end
