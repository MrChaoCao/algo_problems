
def subsets(nums)
  # 1) we return [[]] because we return an array of all the subsets of the empty array
      # the empty array is a subset of the empty array
  return [[]] if nums.empty
  # 2) on each call of this method, we drop the last element of the array
  subs = subsets(nums.take(nums.count - 1))
  # 3) on each call of the array we take the last element of the array (the one we dropped previously)
    # We add it to everything element already in the array
      # We take these new elements and add them all to array as well
  subs.concat(subs.map {|subset| subset + [nums.last]})
end
