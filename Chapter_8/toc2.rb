# Table of contents, revisited.

contents = [['Table of Contents'], ['Chapter 1: Getting Started', 'Chapter 2: Numbers        ', 'Chapter 3: Letters         '], ['page 1', 'page 9', 'page 13']]

line_width = 45

puts contents[0][0].center(line_width)
puts contents[1][0].ljust(line_width/2) + contents[2][0].rjust(line_width/2)
puts contents[1][1].ljust(line_width/2) + contents[2][1].rjust(line_width/2)
puts contents[1][2].ljust(line_width/2) + contents[2][2].rjust(line_width/2)