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
  # 1) Create a slow and a fast runner
  slow = head
  fast = head

  # 2) When fast runner is at the end, slow will be at the middle
  while fast
    slow = head.next
    fast = head.next.next
  end

  # 3) send fast back to the beginning and reverse the second half of the list
  fast = head
  slow = reverse_linked_list(slow)

  # 4) Step through the list and if your slow and fast runners are unequal then it's not a palindrome
  while slow
    return false if slow.val != fast.val
    fast = fast.next
    slow = slow.next
  end

  # 5) If we reach the end and we haven't returned out, it must be a palindrome
  true
end

def reverse_linked_list(head)
  reversed_head = nil

  until head.next.nil?
    next_node = head.next
    head.next = reversed_head
    reversed_head = head
    head = next_node
  end

  reversed_head
end


#
# take head link of the list
#   set the head of our reversed list to be its tail
  # set the head node to be the new head of our reversed list
  # move to the new head of our forwards list
