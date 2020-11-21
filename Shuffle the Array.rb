# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
times = nums.length/n

j = 0
new_nums = []

    while j <= times
    
    nums.each.with_index do |ele, i|
            
       new_nums << ele if i % n == j     
    end
    j += 1

end
new_nums
end