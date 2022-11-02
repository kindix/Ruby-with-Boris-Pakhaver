combination = lambda { |n| lambda { |r| ((1..n).inject(:*)) / ((1..r).inject(:*)) * ((1..n-r).inject(:*))}}


n = 5
r = 3
nCr = combination.(n)
puts nCr.(r)
