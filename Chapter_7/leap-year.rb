# Leap year.

puts 'Please enter a starting year.'
y1 = gets.chomp.to_i
puts 'Please enter an ending year.'
y2 = gets.chomp.to_i
puts 'Leap years between ' + y1.to_s + ' and ' + y2.to_s + ':'
    if y1 % 400 == 0
        puts y1.to_s
    end
while y1 - 1 <= y2
    y1 = y1 + 1
    if y1 % 4 == 0
        puts y1.to_s
    if y1 % 400 == 0
        puts y1.to_s
    end
end
end