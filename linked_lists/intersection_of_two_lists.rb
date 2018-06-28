# Write a program to find the node at which the intersection of two singly linked lists begins.
#
#
# For example, the following two linked lists:
#
# A:          a1 → a2
#                    ↘
#                      c1 → c2 → c3
#                    ↗
# B:     b1 → b2 → b3
# begin to intersect at node c1.
#
#
# Notes:
#
# If the two linked lists have no intersection at all, return null.
# The linked lists must retain their original structure after the function returns.
# You may assume there are no cycles anywhere in the entire linked structure.
# Your code should preferably run in O(n) time and use only O(1) memory.



def find_intersection(headA, headB)
  # 1) if either list is nil then there is no intersection
  return nil if headA.nil? || headB.nil?
  # 2) set a runner for both lists
  runner1 = headA
  runner2 = headB

  # 3) iterate through the lists until the runners are at the same point
  while runner1 != runner2
    # 4) if we hit the end of a list, start the runner at the head of the other list
      # if runner1 and runner2 intersect, then they share a common path
        # runner1 travels 1, runner2 travels 2
        # runner1 and runner2 both travel 3
        # if you start them back from the beginning they will meet at 1+3+2 = 2+3+1
      # if we reach the end of both lists twice, both runners will be
    runner1 = runner1.nil? ? headB : runner1.next
    runner2 = runner2.nil? ? headA : runner2.next
  end

  # we break when runner1 and runner2 are equal. so we just return runner1
  runner1
end
