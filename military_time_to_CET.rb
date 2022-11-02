  def military_time_to_cet(input)
    if input.length == 4
      a = input[0,2]
      b = input[2,2]
      if a.to_i < 12
        b << " PM"
        a << ":" << b
      elsif
        b << " AM"
        a = a.to_i - 12
        a.to_s. << ":" << b
      end
    end
  end

p military_time_to_cet("4125")
