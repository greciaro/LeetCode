Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.

 

Example 1:

Input: "Hello"
Output: "hello"
Example 2:

Input: "here"
Output: "here"
Example 3:

Input: "LOVELY"
Output: "lovely"

# @param {String} str
# @return {String}
def to_lower_case(str)
arr = str.split("")
alpha_low = ('a'...'z').to_a.join
alpha_up = alpha_low.upcase 


arr.each_with_index do |ele, i|
    if alpha_up.include?(ele) 
        arr[i] = alpha_low[alpha_up.index(ele)]
    end
end

arr.join("")  
end