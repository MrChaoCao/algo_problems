def construct_maximum_binary_tree(nums)
  tree_constructor(nums)
  tree_to_array
end

def tree_constructor(nums)
  return nil if nums.nil? || nums.empty?
  max_index = nums.index(nums.max)
  max_node = TreeNode.new(nums.max)
  max_node.left = construct_maximum_binary_tree(nums[0...max_index])
  max_node.right = construct_maximum_binary_tree(nums[max_index + 1..-1])
  max_node
end
