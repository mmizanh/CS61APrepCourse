#Takes names, prints greeting w/ full name (interactive).

puts 'What is your first name?'
first = gets.chomp
puts 'What is your middle name?'
middle = gets.chomp
puts 'What is your last name?'
last = gets.chomp
puts 'Hello ' + first + ' ' + middle + ' ' + last + '.'