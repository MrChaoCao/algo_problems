# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
# Example 1:
#
# Input: "A man, a plan, a canal: Panama"
# Output: true

def is_palindrome(s)
    alpha_num = 'abcdefghijklmnopqrstuvwxyz0123456789'
    lets = s.downcase.chars.select {|ch| alpha_num.include?(ch)}
    lets.each_with_index do |ch, i|
        return false if lets[i] != lets[lets.length - i - 1]
    end
    true
end
