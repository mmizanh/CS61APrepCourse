=begin
Old-school Roman numerals.
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
=end

def romanize num
new = (num[0]+'0').to_i
new2 = (num[0]+'00').to_i
new3 = num[1].to_s + num[2].to_s
new4 = (num[1]+'0').to_i
new5 = (num[0]+'000').to_i
new6 = (num[1]+'00').to_i
new7 = (num[2]+'0').to_i

    #SECTION 1
        if num.to_i < 5
            puts 'I' * num.to_i
        end
    
        if (num.to_i >= 5 && num.to_i < 10)
            puts 'V' + ('I' * (num.to_i-5))
        end
    
    #SECTION 2
        if (num.to_i >= 10) && (num.to_i < 50) && (num[1].to_i == 0)
            puts ('X' * (num.to_i/10))
        end
    
        if (num.to_i >= 10) && (num.to_i < 50) && (num[1].to_i < 5)
            puts ('X' * (new/10)) + ('I' * (num.to_i-new))
        end
    
        if (num.to_i >= 10) && (num.to_i < 50) && (num[1].to_i >= 5)
            puts ('X' * (new/10)) + ('V' * 1) + ('I' * (num.to_i-new-5))
        end
    
    #SECTION 3
        if (num.to_i >= 50) && (num.to_i < 100) && (num[1].to_i == 0)
            puts ('L' * 1) + ('X' * ((new-50)/10))
        end
    
        if (num.to_i >= 50) && (num.to_i < 100) && (num[1].to_i < 5)
            puts ('L' * 1) + ('X' * ((new-50)/10)) + ('I' * (num[1].to_i))
        end
    
        if (num.to_i >= 50) && (num.to_i < 100) && (num[1].to_i >= 5)
            puts ('L' * 1) + ('X' * ((new-50)/10)) + ('V' * 1) + ('I' * (num[1].to_i-5))
        end
    
    #SECTION 4
        if (num.to_i >= 100) && (num.to_i < 500) && (num[1].to_i == 0) && (num[2].to_i == 0)
            puts ('C' * (num.to_i/100))
        end
    
        if (num.to_i >= 100) && (num.to_i < 500) && (num[1].to_i < 5) && (num[2].to_i <= 5)
            puts ('C' * (new2/100)) + ('L' * ((num.to_i-new2)/50)) + ('X' * ((num.to_i-new2)/10)) + ('V' * ((num.to_i-new2-new4)/5)) + ('I' * (num[2].to_i))
        end
    
        if (num.to_i >= 100) && (num.to_i < 500) && (num[1].to_i < 5) && (num[2].to_i > 5)
            puts ('C' * (new2/100)) + ('L' * ((num.to_i-new2)/50)) + ('X' * (new4/10)) + ('V' * 1) + ('I' * (num[2].to_i-5))
        end
    
        if (num.to_i >= 100) && (num.to_i < 500) && (num[1].to_i >= 5) && (num[2].to_i >= 5)
            puts ('C' * (new2/100)) + ('L' * 1) + ('X' * ((num.to_i-new2-num[2].to_i-50)/10)) + ('V' * 1) + ('I' * (num[2].to_i-5))
        end
    
        if (num.to_i >= 100) && (num.to_i < 500) && (num[1].to_i >= 5) && (num[2].to_i < 5)
            puts ('C' * (new2/100)) + ('L' * 1) + ('X' * ((new4-50)/10)) + ('I' * (num[2].to_i))
        end
    
    #SECTION 5 
        if (num.to_i >= 500) && (num.to_i < 1000) && (num[1].to_i == 0) && (num[2].to_i == 0)
            puts ('D' * 1) + ('C' * ((num.to_i-500)/100)) 
        end
    
        if (num.to_i >= 500) && (num.to_i < 1000) && (num[1].to_i <= 5) && (num[2].to_i < 5)
            puts ('D' * 1) + ('C' * ((new2-500)/100)) + ('L' * ((num.to_i-new2)/50)) + ('X' * ((num.to_i-new2)/10)) + ('I' * (num.to_i-new2-new4))
        end
    
        if (num.to_i >= 500) && (num.to_i < 1000) && (num[1].to_i <= 5) && (num[2].to_i >= 5)
            puts ('D' * 1) + ('C' * ((new2-500)/100)) + ('L' * ((num.to_i-new2)/50)) + ('X' * ((num.to_i-new2)/10)) + ('V' * ((num.to_i-new2-new4)/5)) + ('I' * (num.to_i-new2-new4-5))
        end
        
        if (num.to_i >= 500) && (num.to_i < 1000) && (num[1].to_i >= 5) && (num[2].to_i >= 5)
            puts ('D' * 1) + ('C' * ((new2-500)/100)) + ('L' * 1) + ('X' * ((num.to_i-new2-50)/10)) + ('V' * 1) + ('I' * (num[2].to_i-5))
        end
    
        if (num.to_i >= 500) && (num.to_i < 1000) && (num[1].to_i >= 5) && (num[2].to_i < 5)
            puts ('D' * 1) + ('C' * ((new2-500)/100)) + ('L' * 1) + ('X' * ((num.to_i-new2-50)/10)) + ('I' * num[2].to_i)
        end
    
    #SECTION 6
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i == 0) && (num[2].to_i == 0) && (num[3].to_i == 0)
            puts ('M' * num[0].to_i)
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i < 5) && (num[2].to_i <= 5) && (num[3].to_i < 5)
            puts ('M' * num[0].to_i) + ('D' * ((num.to_i-new5)/500)) + ('C' * ((num.to_i-new5)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6)/10)) + ('V' * ((num.to_i-new5-new6-new7)/5)) + ('I' * (num.to_i-new5-new6-new7))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i < 5) && (num[2].to_i <= 5) && (num[3].to_i >= 5)
            puts ('M' * num[0].to_i) + ('D' * ((num.to_i-new5)/500)) + ('C' * ((num.to_i-new5)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6)/10)) + ('V' * 1) + ('I' * (num.to_i-new5-new6-new7-5))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i <= 5) && (num[2].to_i >= 5) && (num[3].to_i <= 5)
            puts ('M' * num[0].to_i) + ('D' * ((num.to_i-new5)/500)) + ('C' * ((num.to_i-new5)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6-50)/10)) + ('V' * (num.to_i-new5-new6-new7)) + ('I' * (num.to_i-new5-new6-new7-5))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i <= 5) && (num[2].to_i >= 5) && (num[3].to_i >= 5)
            puts ('M' * num[0].to_i) + ('D' * ((num.to_i-new5)/500)) + ('C' * ((num.to_i-new5)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6-50)/10)) + ('V' * 1) + ('I' * (num.to_i-new5-new6-new7-5))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i >= 5) && (num[2].to_i <= 5) && (num[3].to_i >= 5)
            puts ('M' * num[0].to_i) + ('D' * 1) + ('C' * ((num.to_i-new5-500)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6)/10)) + ('V' * 1) + ('I' * (num.to_i-new5-new6-new7-5))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i >= 5) && (num[2].to_i < 5) && (num[3].to_i < 5)
            puts ('M' * num[0].to_i) + ('D' * ((num.to_i-new5)/500)) + ('C' * ((num.to_i-new5-500)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6)/10)) + ('I' * (num.to_i-new5-new6-new7))
        end
    
        if (num.to_i >= 1000) && (num.to_i <= 3000) && (num[1].to_i >= 5) && (num[2].to_i >= 5) && (num[3].to_i >= 5)
            puts ('M' * num[0].to_i) + ('D' * 1) + ('C' * ((num.to_i-new5-500)/100)) + ('L' * ((num.to_i-new5-new6)/50)) + ('X' * ((num.to_i-new5-new6-50)/10)) + ('V' * 1) + ('I' * (num.to_i-new5-new6-new7-5))
        end
end

puts 'Enter a number and get its Roman counterpart.'
x = gets.chomp
romanize x