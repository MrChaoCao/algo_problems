var searchBST = function(root, val) {
  if (root.val === val){
    return root
  } else if (root.left && root.val > val) {
      return searchBST(root.left, val)
  } else if (root.right && root.val < val) {
      return searchBST(root.right, val)
  } else {
    return []
  }
};
