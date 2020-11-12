# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)

    arr = (n.to_s).split('')
    arr2 = arr.map { |ele| ele.to_i}
    sum = arr2.reduce(0, :+)
    factorial = arr2.reduce(1, :*)
    return factorial - sum
end