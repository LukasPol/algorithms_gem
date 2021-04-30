# Question: https://www.geeksforgeeks.org/binary-search/

def binarySearch(arr, left, right, x)
  if right >= left
    mid = left + (right-left) / 2
    mid = mid.floor

    if arr[mid] == x
      return mid

    elsif arr[mid] > x
      right = mid - 1
      return binarySearch(arr, left, right, x)

    else
      left = mid + 1
      return binarySearch(arr, left, right, x)
    end

  else
    return -1
  end
end

# Test 1
# arr = [ 1, 3, 4, 10, 40, 55, 90 ]
# x = 90
# Output: 6

# Test 1
# arr = [ 1, 3, 4, 10, 40, 55, 90 ]
# x = 4
# Output: 2

# Test 1
# arr = [ 40, 55, 1, 3, 4, 10, 90 ]
# x = 90


n = arr.length - 1

result = binarySearch(arr, 0, n, x)
puts result < 0 ?
    "Element is not present in array" :
    "Element is present at index #{result}"