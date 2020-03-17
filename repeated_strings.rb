# frozen_string_literal: true

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/repeated-string

print 'Enter both values for S & N'
s = gets.chomp
n = gets.chomp.to_i

def repeated_string(s, n)
  return 0 if s == ''

  sarr = s.split('') # turning string into array for iteration
  length = s.length # length of string
  how_many = n / length # how many s's fit into n?
  left_over = n % length # Remainders of s/n
  count_digits = sarr.count('a') # How many 'a' are there
  count = count_digits * how_many # count of digits without remainders
  x = left_over - 1
  unless left_over.zero?
    0.upto x do |i| # counting remainders
      count += 1 if sarr[i] == 'a'
    end
  end
  count
end

repeated_string(s, n)
