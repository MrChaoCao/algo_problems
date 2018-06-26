# Given a linked list, determine if it has a cycle in it.
#
# Follow up:
# Can you solve it without using extra space?

def has_cycle?(head)
  return false if head.nil?

  slow = head
  fast = head

  while fast.next && fast.next.next
    slow = slow.next
    fast = fast.next.next
    return true if slow == fast
  end

  false
end
