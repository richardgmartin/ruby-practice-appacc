# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(str)
  length_of_string = str.length
  x = length_of_string - 1
  y = 0

  array_given = str.split('')
  array_reverse = []

  while (x >= 0) do
    array_reverse[y] = array_given[x]
    x -= 1
    y += 1
  end

  reverse_string = array_reverse.join
  return reverse_string

end

puts reverse('abc')

puts reverse('hello')

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)