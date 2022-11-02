def CodelandUsernameValidation(str)

  # code goes here
  str.length >= 4 && str.length <= 25 && str.scan(/^[a-zA-Z][a-zA-Z0-9_]+[^_]$/) ? str : false
end


p CodelandUsernameValidation("Qwekjlskjfs3232_rwr3_")
