# Question: https://www.geeksforgeeks.org/maximize-array-sun-after-k-negation-operations/

def maximun_sum(arr, k)  
  k.times do
    min = arr.max

    index = 0
    arr.each_with_index do |item, i|
      if item < min
        min = item
        index = i
      end
    end

    next if min == 0 

    arr[index] = -arr[index]
  end

  s = arr.sum

  sum
end

# arr = [9, 8, 8, 5]
# k = 3

arr = [-2, 0, 5, -1, 2]
k = 4

puts maximun_sum(arr, k)
