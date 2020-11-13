# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    new_nums = []
    nums.each_with_index do|n, idx|
        if idx.even?
            n.times {new_nums << nums[idx + 1]}
        end
    end
    return new_nums
end