str = "ABC \xC3\xA4\xC3\xB6\xC3\xBC\xC3\x84\xC3\x96\xC3\x9C"

def transcode(str)
    p str
    p str.force_encoding(Encoding::UTF_8)
end

transcode(str)

def serial_average(str)
    arr = str.split("-")
    result = ((arr[1].to_f + arr[2].to_f) / 2).round(2)
    "#{arr[0].to_s}-#{result}"
end
p serial_average('001-12.43-56.78')

def count_multibyte_char(srt)
    result = 0
    srt.each_byte { |elem| result += 1 if elem > 1 }
    result
end

 p count_multibyte_char("δεν κατέγραψα στη βρίσκεται πνεύματος.")
