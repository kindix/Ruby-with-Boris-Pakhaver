def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.each { |k, v| p k.is_a?(Integer)}
end

person = {:name => "Andrii",
          :age => 33,
          :handsome => true,
          :language => "Ruby"}

func_any(person)
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}

def group_by_marks(marks, pass_marks)
    marks.group_by { |k, v| v >= pass_marks ? "Passed" : "Failed"}
end

p group_by_marks(marks, 60)


def countingSort(arr)
  new_arr = (0..99).to_a
  new_hash = {}
  new_arr.each { |elem| new_hash[elem] = arr.count(elem) }
  new_hash.values
end

p countingSort()
