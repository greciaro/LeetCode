# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    sum = 0
    others = []
    s.chars.map.with_index do |char, idx|
        if char == '('
            sum += 1
        else #char == ')'
            sum -= 1
        end
        if sum == 0
            s[idx] = '*'
            others << idx + 1
        end
    end
    s[0] = '*'
    others.each { |ele| s[ele] = '*' }
    return (s.split('*')).join('')
end


   
#     return '' if s.length == 0
#     sum = 0
#     counter = 0
#     s.chars.map.with_index do |char, idx|
        
#             # next if char == ' '
#             if char == '('
#                       puts 'position1:  ' + idx.to_s
#                 sum += 1
#                 puts char
#                 puts sum
          
#             elsif char == ')'
#                                  puts 'position2' + idx.to_s
#                 sum -= 1
#                 puts char
#                 puts sum

#                 if sum == 0
#                                          puts 'position3' + idx.to_s + 'lenght of string:'
#                     puts (s.length - 1)
#                    s.insert((idx + 1), ' ')
                 
#                     puts 'space inserted in '+ (idx + 1 + counter).to_s
#                        puts 'position3' + idx.to_s + 'lenght of string:'
#                         puts (s.length - 1)
#                        counter += 1

#                 end  
#             end  
#             break if idx == (s.length - 2)
#     end
#        puts (s.length - 1)
#     arr = s.split(' ')
#     # arr.map do |string|
#     #     string[0] = ''
#     #     string[-1] = ''
#     #  end
#      return arr