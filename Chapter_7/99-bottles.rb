#99 bottles of beer.

line1 = ' bottles of beer on the wall, '
line2 = ' bottles of beer.'
line3 = 'Take one down, pass it around, '
line4 = ' bottles of beer on the wall.'

start = 99
while start != 0
    puts start.to_s + line1 + start.to_s + line2
    puts line3 + start.to_s + line4
    start = start - 1
end