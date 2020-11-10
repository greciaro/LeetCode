# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    arr = []
    half_arr = []
    if n == 1
        return arr << 0
    elsif !n.even?
          arr << 0
    end
          i = 1
        while arr.length < n
            arr << i
            arr << -i
            i += 1
        end
        
    return arr
end