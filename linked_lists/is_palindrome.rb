# Example 1:
#
# Input: 1->2
# Output: false
# Example 2:
#
# Input: 1->2->2->1
# Output: true
# Follow up:
# Could you do it in O(n) time and O(1) space?

def is_palindrome(head)
  tail = list_reverser(head)

  while head.next || tail.next
    return false if head != tail
    head = head.next
    tail = tail.next
  end

  true
end

def list_reverser(head)
  newHead = nil

  while head.next
    current = head
    head.next = newHead
    newHead = head
    head = current.next
  end

  newHead
end

#
# take head link of the list
#   set the head of our reversed list to be its tail
  # set the head node to be the new head of our reversed list
  # move to the new head of our forwards list
