def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(str, arr)
  arr.each { |elem| str.gsub!(elem, strike(elem)) }
  str
end

p mask_article("fuck it is fuck", ["fuck", "it"])

def process_text(string)
    string.map(&:strip).join(" ")
end


p process_text(["Hi,            \n", "            Are you having fun?            "])



p "skfhsk" + 23.to_s + "asfjsb"
