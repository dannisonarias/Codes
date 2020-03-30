# https://www.hackerrank.com/challenges/anagram/problem
# solution to hackerank anagram
p "Enter a string a-z"
testcase = gets.chomp

def anagram(s)
    return -1 if s.length % 2 != 0
    len = s.length/2
    left = s.chars[0..len -1]
    right = s.chars[len..s.length]
    return 0 if left == right
    left.each_with_index do |letter, index|
        position = right.index(letter)
        right.delete_at(position) unless position.nil? 
    end
    return right.length
end

anagram(testcase)