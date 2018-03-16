# Reverse a string of any length without copying it to another string.

# input: string
# output: reversed string

# start from the end of the string
# move the letter to the front of the string
# until you reach the beginning of the string

# def rev_string(string)
#   reversed = ""
#   i = string.length - 1
#   while i >= 0
#     reversed += string[i]
#     i -= 1
#   end
#   reversed
# end

hello = "hello"
# hello = rev_string(hello)
goodluck = "goodluck"

def rev_string(string)
  return string if string.length == 1
  reversed = string

  if string.length.odd?
    i = string.length - 1
    j = 0
    while i > string.length / 2
      reversed[i], reversed[j] = reversed[j], reversed[i]
      i -= 1
      j += 1
    end
  else
    i = string.length - 1
    j = 0
    until i < string.length / 2
      reversed[i], reversed[j] = reversed[j], reversed[i]
      i -= 1
      j += 1
    end
  end
  reversed
end

p rev_string(goodluck)