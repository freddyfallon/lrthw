# creates a variable and assigns a format string to it
formatter = "%{first}, %{second}, %{third}, %{fourth}"

# prints the format string with number, strings and booleans attached
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three" , fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
# prints the format string with the format string attached in each case
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# prints the format string with strings against each, uses multi-line
puts formatter % {
  first: "I had this thing.",
  second: "That you could type right up.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
