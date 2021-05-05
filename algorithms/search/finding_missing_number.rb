# Question: https://www.geeksforgeeks.org/find-the-missing-number/

def missing_number(arr)
  n = arr.length

  total = (n + 1) * (n + 2) / 2

  s = 0
  arr.each do |item|
    s += item
  end

  return total - s
end

# arr = [1, 2, 4, 5, 6] # output: 3
# arr = [7, 2, 3, 1, 4, 6] # output: 5
arr = [4, 5, 6, 1, 8, 2, 9, 3] # output: 7

puts missing_number(arr)