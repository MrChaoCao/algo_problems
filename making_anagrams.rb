
# source: https://www.hackerrank.com/challenges/ctci-making-anagrams/problem

a = gets.strip
b = gets.strip

deletions = 0

counter_hash = Hash.new(0)

a.chars.each do |el|
  counter_hash[el] += 1
end

b.chars.each do |el|
  counter_hash[el] -= 1
end

counter_hash.values.each do |el|
    deletions += el.abs
end

p deletions

# Make a counter hash
  # iterate through string a, adding every letter's count to the hash
  # iterate through string b, subtracting every letter's count from the hash
  #
  # All common letters to the string pair will be cancelled out leaving only the differences
  #   string a's letters will have positive counts
  #   string b's letters will have negative counts
  #
  # Sum the absolute value of the counter hash and return it
