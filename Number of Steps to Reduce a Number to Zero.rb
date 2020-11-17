# @param {Integer} num
# @return {Integer}
def number_of_steps (num)
    count = 0
    while num > 0
        if num.even?
            num /= 2
            count += 1
        else
            num -= 1
             count += 1
        end
    end
        return count
end