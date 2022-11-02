
def min_sum(arr)
  len = arr.length
  arr.sort!
  a, b = [arr[0, len / 2],  arr.reverse[0, len / 2]]
  pairs = a.zip(b).map { |x| x }
  pairs.map { |i| i.inject(:*)}.sum
end



arr = [1, 4, 8, 6, 0, 2]

p min_sum(arr)
