# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
 
    new_words = []
    h = Hash.new(0)
    
    words.each do |word|
        h[word_to_morse(word)] += 1
       end
      
        return h.length
end

    def word_to_morse(w)
           alpha_morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    alpha = 'abcdefghijklmnopqrstuvwxyz'.split('')
        new_w = ''
        w.each_char do |char|
            new_w += alpha_morse[alpha.index(char)]
        end
        return new_w
    end
    


#      h = Hash.new(0)
#     words_morse = words.each do |word|
#         word.chars.map.with_index do |char|
#             alpha_morse[alpha.index(char)]
#         end
#            h[word] += 1
#     end
    
#     return h.length