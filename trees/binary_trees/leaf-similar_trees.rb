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

def leaf_similar(root1, root2)
  stack1 = [root1]
  stack2 = [root2]

  until stack1.empty? && stack2.empty?
    return false if dfs(stack1) != dfs(stack2)
  end

  stack1.empty? && stack2.empty?
end

def dfs(stack)
  loop do
    c_node = stack.pop
    stack.push(c_node.right) if c_node.right
    stack.push(c_node.left) if c_node.left
    return c_node.val if c_node.left.nil? && c_node.right.nil?
  end
end

```
Make a stack for each tree
As long as either stack still has a node
  For each stack remove the last node
  Then add the right child, then the left child.
  If there are no children return a value. these are the leaves
If the two leaves ever mismatch return false
If both stacks are empty return true
```

#
# declare array for each tree
# dfs the first root and pass in empty array
# dfs the second root and pass in empty array
# return array1 == array2
#
# dfs(node, array)
#   if node
#     if there are no children, push value to leaf array
#     dfs(node.left, leaves)
#     dfs(node.right, leeaves)

def leaf_similar(root1, root2)
  leaves1 = []
  leaves2 = []

  dfs(root1, leaves1)
  dfs(root2, leaves2)

  leaves1 == leaves2
end

def dfs(node, leaves)
  if node
    leaves << node.val unless node.right && node.left
    dfs(node.left, leaves)
    dfs(node.right, leaves)
  end
end
