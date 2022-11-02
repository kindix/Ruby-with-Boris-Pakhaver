num = 16308976361

def check_this(num)
  num_str = num.to_s
  num_length = num_str.length
  mid_of_len = num_length / 2.0
  mid_in_i = mid_of_len.to_i
  # num_length.odd? ? num_str[0, num_length / 2] : num_str[0, num_length / 2]
  if num_length.odd?
    num_left = num_str[0, mid_in_i]
    num_right = num_str.reverse[0, mid_in_i]
  else
    num_left = num_str[0, mid_in_i - 1]
    num_right = num_str.reverse[0, mid_in_i - 1]
  end

  my_proc = Proc.new {|str| str.chars.inject(0) { |i, j| i.to_i + j.to_i}}
  my_proc.call(num_left) == my_proc.call(num_right) ? "Bunched" : "Not bunched"
end


p check_this(num)
