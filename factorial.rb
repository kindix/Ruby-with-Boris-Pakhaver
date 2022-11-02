
def factorial(num)
  (1..num).inject(:*)
end

def factorial_2(num)
  (1..num).map { |elem| total *= elem}
end

p factorial(7)
p factorial(7)




p "bla bla blue ale".split.find_all {|i| p i.start_with?("b")}.join(" ")

my_arr = ["1, 2, 4, 5, 6", "2, 6, 7, 9"]

a, b = my_arr
# c = a.split(", ") - b.split(", ")
# my_rezult = a.split(", ") - c
# my_rezult.map {|a| a.to_i}.join(", ")

p (a.split(", ") & b.split(", ")).join(", ")
hackerrank = {7874343.42 => 42, 3454 => 324, ksf: 34}

p hackerrank.select { |k,v| k.is_a?(Integer) && k.odd?}
