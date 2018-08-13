# Consider all the leaves of a binary tree.  From left to right order, the values of those leaves form a leaf value sequence.
#
# For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).
#
# Two binary trees are considered leaf-similar if their leaf value sequence is the same.
#
# Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.

# Leaf checker
#   Declare 2 stacks with root1 and root2 as the first element
#   while both stacks are non empty
#     return false if the dfs of both stacks is unequal
#   return (stack1.empty? and stack2.empty?)
#
# DFS
#   loop
#     pop the last node from the stack
#       add the node's right child if it exists
#       add the node's left child if it exists
#       if there are no more children, return the node's value
