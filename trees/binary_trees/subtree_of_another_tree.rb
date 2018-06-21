# Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
#
# Example 1:
# Given tree s:
#
#      3
#     / \
#    4   5
#   / \
#  1   2
# Given tree t:
#    4
#   / \
#  1   2
# Return true, because t has the same structure and node values with a subtree of s.
# Example 2:
# Given tree s:
#
#      3
#     / \
#    4   5
#   / \
#  1   2
#     /
#    0
# Given tree t:
#    4
#   / \
#  1   2
# Return false.


def is_subtree(root1, root2)
  # 1) if the main tree is null there are no subtrees
  return false if root1.nil?
  # 2) submethod checks if the two roots are equal trees
  return true if sub_tree_checker(root1, root2)

  # 7) go deeper in the main tree if we're not at the bottom and we haven't found a subtree
  is_subtree(root1.left, root2) || is_subtree(root1.right, root2)
end

def sub_tree_checker(node1, node2)
  # 3) if both nodes are nil (and we haven't returned false already) they're equal
  return true if node1.nil? && node2.nil?
  # 4) if one node is nil and the other isn't return false
  return false if node2.nil? || node1.nil?
  # 5) if node1 is not equal to node 2 return false
  return false if node1.val != node2.val

  # 6) check both branches of both nodes to see if they in turn head equal subtrees
  sub_tree_checker(node1.left, node2.left) && sub_tree_checker(node1.right, node2.right)
end
