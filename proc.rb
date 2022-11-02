def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = Proc.new { |elem| elem ** 2 }
proc_sum_array     = Proc.new { |elem| elem.inject(:+) }
my_array = [1, 2, 3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


p my_array.map(&:to_i) == my_array.map { |elem| elem.to_i}
p my_array.inject(:+) == my_array.inject { |a, b| a + b}


def my_def(n)
  yield n
end

p my_def(5) { |x, y = 5| x ** x + y}  
