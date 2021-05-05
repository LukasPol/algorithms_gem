# Question: https://www.geeksforgeeks.org/merge-sort/

def merge_sort(arr)
  return arr if arr.length == 1
  middle = arr.length / 2

  left = arr[0...middle]
  right = arr[middle..-1]

  sorted_left = merge_sort(left)
  sorted_right =  merge_sort(right)

  merge(sorted_left, sorted_right)
end


def merge(left, right)
  result = []

  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end

  result + left + right
end

arr = [12, 11, 13, 5, 6, 7]

sorted_arr = merge_sort(arr)

p sorted_arr