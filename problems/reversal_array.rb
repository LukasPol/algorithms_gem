def reversalArray(arr, k)
  len = arr.size
  newArr = []

  newArr << arr.pop(k)
  newArr << arr

  newArr.flatten!
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3

p reversalArray(arr, k)