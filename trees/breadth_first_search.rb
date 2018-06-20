def breadth_first_traversal(root)
  return nil if root.nil?
  queue = [root]

  until queue.empty?
    val = queue.shift

    queue << val.left if val.left
    queue << val.right if val.right
  end

  root
end
