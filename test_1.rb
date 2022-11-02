arr = [1, 1, 2, 2, 4, 6, 3, 3, 5, 0, 6, 0, 5]

def lonelyinteger(arr)
  result = 0
  arr.each { |num| result = num if arr.count(num) == 1 }
  result
end

p lonelyinteger(arr)

puts "=================================================="

matrix = [[1, 2, 3], [4, 5, 6], [9, 8, 9]]

def some_method(arr)
    primary = 0
    secondary = 0
    n = arr[0].length
    arr.each_with_index do |i, index|
      primary += i[index]
      secondary += i[n-index-1]
    end
    return (primary - secondary).abs
end

p some_method(matrix)
