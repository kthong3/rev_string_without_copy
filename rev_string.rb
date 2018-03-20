# Reverse a string of any length without copying it to another string.

# input: string
# output: reversed string

# start from the end of the string
# move the letter to the front of the string
# until you reach the beginning of the string


hello = "hello"
timeline = "timeline"
friends = "friends"

def rev_string(string)
  if string.length == 1
    return string
  end
  reversed = string
  i = 0
  j = string.length - 1

  while i < string.length/2
    reversed[i], reversed[j] = reversed[j], reversed[i]
    i += 1
    j -= 1
  end
  reversed
end

# p rev_string(hello)
# rev_string(timeline)

p rev_string(friends)
