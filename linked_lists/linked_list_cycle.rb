# Given a linked list, determine if it has a cycle in it.
#
# Follow up:
# Can you solve it without using extra space?



def has_cycle?(head)
  # 1) if there is no nodes it's not cyclic
  return false if head.nil?
  # 2) make a fast and a slow runner
  slow = head
  fast = head

  # 3) have the fast runner move at double speed. If the list is cyclic they will eventually collide.
    # if the runners do not collide
  while fast.next && fast.next.next
    # 4) slow advances by ones, fast advances by twos.
      # if the list is cyclic, they'll colide
        # if it's not they will eventually reach the end of the list
    slow = slow.next
    fast = fast.next.next

    # 5) if slow and fast collide, it's a cyclic list
    return true if slow == fast
  end

  # 6) if we reach the end of the list, then it's not cyclic.
  false
end
