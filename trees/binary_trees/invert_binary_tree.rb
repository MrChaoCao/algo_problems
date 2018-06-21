# Invert a binary tree.
#
# Example:
#
# Input:
#
#      4
#    /   \
#   2     7
#  / \   / \
# 1   3 6   9
# Output:
#
#      4
#    /   \
#   7     2
#  / \   / \
# 9   6 3   1

def invert_binary_tree(root)
  return nil if root.nil?
  queue = [root]
  until queue.empty?
    val = queue.shift
    temp_left, temp_right = val.left, val.right

    val.left = temp_right
    val.right = temp_left

    queue << val.left if val.left
    queu << val.right if val.right
  end

  root
end
