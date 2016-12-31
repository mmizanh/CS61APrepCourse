num = 1930 + rand(21)
x = gets.chomp
while x != 'BYE'
    if x == x.downcase || x == x.capitalize
        puts 'HUH?! SPEAK UP, SONNY!'
x = gets.chomp
    end
    if x == x.upcase && x != 'BYE'
        puts 'NO, NOT SINCE ' + num.to_s + '!'
x = gets.chomp
    end
end
=begin
say = 'hi grammy'
while say != 'BYE'
say = gets.chomp
while say != say.upcase
puts 'HUH? SPEAK UP SONNY!'
say = gets.chomp
end
year = rand(21) + 1930
puts 'NO, NOT SINCE ' + year.to_s
end
-----------------------------------------------
x = 'Hello grandma.'
while x != 'BYE'
x = gets.chomp
while x != x.upcase
    puts 'HUH?! SPEAK UP SONNY!'
x = gets.chomp
end
num = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + num.to_s + '!'
end
=end