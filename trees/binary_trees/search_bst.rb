def search_bst(root, val)
    if root.val == val
        root
    elsif root.val > val && root.left
        search_bst(root.left, val)
    elsif root.val < val && root.right
        search_bst(root.right, val)
    else
        []
    end
end
