def sum_terms(n)
  t = []
  1.upto(n) { |variable| t << (variable ** 2) + 1 }
  result = t.inject(&:+)
  result
end

def sum_terms(n)
  (1..n).inject(0) { |i, j| i + ((j**2) + 1)}
end


p sum_terms(5)


def miniMaxSum(arr)
    # Write your code here
    arr2 = arr.dup
    arr.delete(arr.max)
    arr2.delete(arr.min)
    print "#{arr.inject(:+)} #{arr2.inject(:+)}"
end


miniMaxSum([5, 5, 5, 5, 5])
