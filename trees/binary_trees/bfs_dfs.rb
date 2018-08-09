def bfs(root)

end

def dfs(root)
  return root unless node.left && node.right
  left = dfs(root.left)
  right = dfs(root.right)

  root
end
