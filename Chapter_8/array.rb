# Building and sorting an array. 

puts 'Type as many words as you want. One word per line until you press Enter on an empty line.'
array = []
entered = gets.chomp

while entered != ''
  array.push entered
  entered = gets.chomp
end
puts array.sort