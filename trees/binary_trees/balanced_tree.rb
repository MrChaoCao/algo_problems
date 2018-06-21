# Example 1:
#
# Given the following tree [3,9,20,null,null,15,7]:
#
#     3
#    / \
#   9  20
#     /  \
#    15   7
# Return true.
#
# Example 2:
#
# Given the following tree [1,2,2,3,3,null,null,4,4]:
#
#        1
#       / \
#      2   2
#     / \
#    3   3
#   / \
#  4   4
# Return false.

def is_balanced(root)
  # 1) empty trees are balanced.
  return true if root.nil?

  # 2) find left and right depth
  left_bal = depth(root.left)
  right_bal = depth(root.right)

  #
  (left_bal - right_bal).abs <= 1 &&
    is_balanced(root.left) &&
    is_balanced(root.right)
end

def depth(root)
  # 3) if we're at the bottom we'll subtract 1 from the depth we've found, we always start at at least one because we can't call this on a nil node
  return -1 if root.nil?

  # 4) go deeper down the tree, adding a level for each recursive call
  # we take the max depth because otherwise we don't know what the depth is!
  [depth(root.left), depth(root.right)].max + 1
end
