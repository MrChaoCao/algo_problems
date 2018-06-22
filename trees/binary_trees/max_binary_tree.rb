# Given an integer array with no duplicates. A maximum tree building on this array is defined as follow:
#
# The root is the maximum number in the array.
# The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
# The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.
# Construct the maximum tree by the given array and output the root node of this tree.
#
# Example 1:
# Input: [3,2,1,6,0,5]
# Output: return the tree root node representing the following tree:
#
#       6
#     /   \
#    3     5
#     \    /
#      2  0
#        \
#         1

def tree_constructor(nums)
  # 1) Base Case, if there is no input array the next node will be nil
  return nil if nums.nil? || nums.empty?
  # 2) find the index of the max element in the array
  max_index = nums.index(nums.max)
  # 3) create a node out of the max element of the arrray
  max_node = TreeNode.new(nums.max)
  # 4) set the left and right children of the present node by recursing with all elements left of the max and right of the max.
  max_node.left = construct_maximum_binary_tree(nums[0...max_index])
  max_node.right = construct_maximum_binary_tree(nums[max_index + 1..-1])
  # 5) return the root node of the tree
  max_node
end
