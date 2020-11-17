# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    bigger = []

    nums.each_with_index do |n1, idx1|
            counter = 0
        nums.each_with_index do |n2, idx2|
            if idx2 != idx1 && n1 > n2
                counter += 1
            else
                counter += 0
            end
        end
        bigger[idx1] = counter
    end
    return bigger
end