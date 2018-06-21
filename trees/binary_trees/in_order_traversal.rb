def in_order_traversal(root, stack = [])
  if root.left
    in_order_traversal(root.left, stack)
  end

  stack << root.value

  if root.right
    in_order_traversal(root.right, stack)
  end

  stack
end

def pre_order_traversal(root, stack = {})

  stack << root.value

  if root.left
    in_order_traversal(root.left, stack)
  end

  if root.right
    in_order_traversal(root.right, stack)
  end

  stack
end
