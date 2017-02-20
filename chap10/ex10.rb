tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat"
ginger_cat = "%{first}, %{second}, %{third}, %{fourth}"

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts ginger_cat % {first: "I'm", second: "\na", third: "\nginger", fourth: "\ncat"}
