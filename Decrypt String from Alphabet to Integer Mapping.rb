# @param {String} s
# @return {String}
def freq_alphabets(s)
    new_s = ''
    numbers = (1..9).map{ |ele| ele.to_s} + ((10..26).map{ |num| num.to_s + '#'})
    letters = ('abcdefghijklmnopqrstuvwxyz').split('')
    # s.each_char.with_index do |char, idx|
    i = 0
        while i < (s.length - 2)
            if s[i + 2] == '#'
                new_s += letters[numbers.index(s[i] + s[i + 1] + s[i + 2])]
                i += 3
            else
                new_s += letters[numbers.index(s[i])]
                i += 1
            end
        end
        
    while  i < (s.length)
          new_s += letters[numbers.index(s[i])]
                i += 1
    end
    
    
return new_s
end