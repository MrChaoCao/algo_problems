function subsets(nums){
  if (nums.length === 0 || nums === null) return []
  let returnArray = [[]];
  nums.forEach( z => {
    temp = returnArr[i].slice(0)
    temp.push(z)
    returnArr.push(temp)
    i++
  });
  return returnArr
}
