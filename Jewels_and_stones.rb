# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    counter = 0
    s.each_char do |stone|
        if j.include?(stone)
            counter += 1
        end
    end
    return counter
end