def convert_temp(temp, output_scale: "celsius", input_scale: "")
    result = 0
    p [input_scale, output_scale]
    if input_scale == "celsius" && output_scale == "fahrenheit"
        result = temp * 1.8 + 32
    elsif input_scale == "celsius" && output_scale == "kelvin"
        result = temp + 273.15
    elsif input_scale == "kelvin" && output_scale == "celsius"
        result = temp - 273.15
    elsif input_scale == "kelvin" && output_scale == "fahrenheit"
        result = (temp - 273.15) * 1.8 + 32
    elsif input_scale == "fahrenheit" && output_scale == "celsius"
        result = (temp - 32)/ 1.8
    elsif input_scale == "fahrenheit" && output_scale == "kelvin"
        result = ((temp - 32)/ 1.8) + 273.15
    else result = temp
    end
end

class Integer
  def factorial
      (1..self).inject(:*)
  end
end

p 5.factorial
