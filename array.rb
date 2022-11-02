def skip_animals(animals, skip)
    arr = []
    animals.each_with_index { |animal, index| arr << "#{index}:#{animal}" if index >= skip}
    arr
end

p skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)

puts "=============================================="

def rot13(secret_messages, n = 13)
  arr_1 = ("A".."z").to_a
  new_arr = arr_1.join.scan(/[a-zA-Z]/)
  arr_13 = (new_arr[n, 26-n] + new_arr[0, n] + new_arr[26 + n, 26-n] + new_arr[26, n]).join
  secret_messages.map! { |word| word.tap { |letter| letter.tr!(new_arr.join, arr_13)}}
end

messages = ["Uryyb", "Hello"]
p rot13(messages)

arr_1 = ("A".."z").to_a
p new_arr = arr_1.join.scan(/[a-zA-Z]/)
n = 2
p arr_13 = (new_arr[n, 26-n] + new_arr[0, n] + new_arr[26 + n, 26-n] + new_arr[26, n]).join
