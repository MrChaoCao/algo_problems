# Given a sorted linked list, delete all duplicates such that each element appear only once.
#
# Example 1:
#
# Input: 1->1->2
# Output: 1->2
# Example 2:
#
# Input: 1->1->2->3->3
# Output: 1->2->3


def remove_dupes(head)
  # 1) if the given node is nil or the next node is nil return the head (nil)
    # if the next node is nil we want to stop
  return head if head.nil? || head.next.nil
  # 2) the node after our head node will be set through recursion
    # if the next value is nil we'll have head followed by head again
  head.next = remove_dupes(head.next)
  # 3) after we have set head.next
    # if the next value is equal to head's value we return head.next
    # this lets us skip duplicate values
    # by putting a return statement here it lets us undo our double head assignment above
  return head.next if head.val == head.next.val
  # 4) finally return head if we're all clear
  head
end
