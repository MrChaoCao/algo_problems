# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
#
# Example:
#
# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4

# iterative solution
def merge_two_lists(list1, list2)
  # 1) create new list, we make a dummy first value
  list3 = ListNode.new(nil)
  # 2) create pointer on our merged list to keep track of where we are
  prev = list3

  # 3) ensure we have 2 values to compare by looping until we don't
  while list1 && list2
    # 4) compare head of list one to the head of list 2
    if list1.val < list2.val
      # 5) if head1 is smaller, make it the next node in the merged list
      prev.next = list1
      # 6) step through list1, make sure we're always looking at the head
      list1 = list1.next
    else
      # 7) do the same for list 2
      prev.next = list2
      list2 = list2.next
    end

    # 8) step through the merged list
    prev = prev.next
  end

  # 9) if one of our input lists ends first, finish off the rest of the merged list with the other list.
  prev.next = list2 if list1.nil?
  prev.next = list1 if list2.nil?

  # 10) return the value after our dummy first value
  list3.next
end

# recursive solution
def merge_two_lists(list1, list2)
  # 1) if either list is null return the other list, we're done merging
  return list2 if list1.nil?
  return list1 if list2.nil?

  # 2) if the value of list1 is less than list2
  if list1.val < list2.val
    # 3) the next item in list 1 will be the recursion of this process
    list1.next = merge_two_lists(list1.next, list2)
    # 4) we return the current item in list 1
    list1
  else
    # 5) else we return the head element of list2 and set its next element to the recursion.
    list2.next = merge_two_lists(list1, list2.next)
    list2
  end
end
