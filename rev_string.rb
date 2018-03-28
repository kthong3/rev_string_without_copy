# Reverse a string of any length without copying it to another string.

# input: string
# output: reversed string

# until it meets the middle of the word
#   iterate through the string
#     by starting with switching the first letter with the last


hello = "hello"
timeline = "timeline"

def rev_string(string)
  i = 0
  j = string.length - 1

  until i >= string.length/2
    string[i], string[j] = string[j], string[i]
    i += 1
    j -= 1
  end
  string
end

p rev_string(hello)