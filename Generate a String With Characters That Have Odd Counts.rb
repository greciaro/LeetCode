# @param {Integer} n
# @return {String}
def generate_the_string(n)
    str = ''
    if n.even?
        return str if n == 0 || n == nil
        str += 'a'
        (n -1).times { str += 'b'}
    else # n is odd
         (n).times { str += 'b'}
    end
    return str
end