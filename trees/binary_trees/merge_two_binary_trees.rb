# Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
#
# You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

# Example 1:
# Input:
# 	Tree 1                     Tree 2
#           1                         2
#          / \                       / \
#         3   2                     1   3
#        /                           \   \
#       5                             4   7
# Output:
# Merged tree:
# 	     3
# 	    / \
# 	   4   5
# 	  / \   \
# 	 5   4   7

def merge_trees(root1, root2)
  return root2 if root1.nil?
  return root1 if root2.nil?

  root1.val += root2.val

  left_merge = merge_trees(root1.left)
  right_merge = merge_trees(root2.right)

  root1
end


def merge_trees_iterative(root1, root2)
  return root2 if root1.nil?

  stack = [root1, root2]

  until stack.empty?
    merging_node = stack.pop
    next if merging_node[0].nil? || merging_node[1].nil?

    merging_node[0].val += merging_node[1].val

    if merging_node[0].left.nil?
      merging_node[0].left = merging_node[1].left
    else 
      stack.push(merging_node[0].left, merging_node[1].left)
    end

    if merging_node[1].right.nil?
      merging_node[0].right = merging_node[1].right
    else
      stack.push(merging_node[0].right, merging_node[1].right)
    end
  end

  root1
end
