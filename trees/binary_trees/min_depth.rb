# Given a binary tree, find its minimum depth.
#
# The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
#
# Note: A leaf is a node with no children.
#
# Example:
#
# Given binary tree [3,9,20,null,null,15,7],
#
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its minimum depth = 2.

def min_depth(root)
  # 1) depth is 0 if we have no root
  return 0 if root.nil?

  # 2) find depths of subtrees deeper down the tree
  right = min_depth(root.right)
  left = min_depth(root.left)

  # 3) if either child is nil we go down the other path
  # we add together both roots so we don't need a messy conditional
  if left == 0 || right == 0
    left + right + 1
  else
    # 4) if both roots have 2 children we go with the shorter depth
    [left, right].min + 1
  end
end
