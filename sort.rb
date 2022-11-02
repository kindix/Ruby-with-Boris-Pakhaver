arr = [1, 1, 2, 2, 4, 6, 3, 3, 5, 0, 6, 0, 5]

def countingSort(arr)
  new_arr = (0..100).to_a
  new_hash = {}
  new_arr.each { |elem| new_hash[elem] = arr.count(elem) }
  new_hash.values
end


p countingSort(arr)


p new_arr = (0..100).to_a
