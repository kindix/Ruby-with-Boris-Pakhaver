require 'prime'
def prime(num)
  num.prime?
end

p prime(16)


power_array = lambda { |num| Prime.lazy.select { |item| item.to_s == item.to_s.reverse }.first(num)}

p power_array.(10)
