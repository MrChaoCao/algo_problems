
def dfs(current, tokens, result)
  if tokens.empty?
    result.push(current.map{|k,v| Array.new(v, k) }).reduce(:+)
  else
    rest = tokens.dup
    char, count = rest.shift
    (0..count).each do |c|
      dfs(current.merge(char => c), rest, result)
    end
  end
end

def subsets_with_dup(nums)
  hash = Hash.new(0)
  
  nums.each do |n|
    hash[n] += 1
  end

  result = []
  dfs({}, hash, result)
  result
end
