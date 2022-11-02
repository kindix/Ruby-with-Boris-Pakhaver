def plusMinus(arr)
    # Write your code here
    arr_plus = []
    arr_minus = []
    arr_0 = []
    arr_length = arr.length.to_f
    arr.each do |elem|
      if elem > 0
        arr_plus << elem
      elsif elem < 0
        arr_minus << elem
      else arr_0 << elem
      end
    end
    return (arr_plus.length/arr_length).floor(6), (arr_minus.length/arr_length).floor(6), (arr_0.length/arr_length).floor(6)
end


arr = [1, 2, 4, 5, -1, 0, 0]


p plusMinus(arr)


def custom_take(arr, index = 1)
    arr[index..]
end

p custom_take([1, 2, 3],)
