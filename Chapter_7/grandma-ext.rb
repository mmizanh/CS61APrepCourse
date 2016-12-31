#Hard of hearing --- extended.

num = 1930 + rand(21)
bye = 0
x = gets.chomp
while bye != 2
    if x == 'BYE'
        bye = bye + 1
x = gets.chomp
    end
    if x == x.downcase || x == x.capitalize
        bye = 0
        puts 'HUH?! SPEAK UP, SONNY!'
x = gets.chomp
    end
    if x == x.upcase && x != 'BYE'
        bye = 0
        puts 'NO, NOT SINCE ' + num.to_s + '!'
x = gets.chomp
    end
end