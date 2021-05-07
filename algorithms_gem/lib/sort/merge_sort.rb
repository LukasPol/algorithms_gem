module Sort
  class MergeSort
    def initialize(arr)
      @arr = arr
    end

    def sort
      merge_sort(@arr)
    end

    private

    def merge_sort(arr)
      len = arr.length
      return arr if len == 1

      middle = len / 2

      left = arr[0...middle]
      right = arr[middle..-1]

      sorted_left = merge_sort(left)
      sorted_right = merge_sort(right)

      merge(sorted_left, sorted_right)
    end

    def merge(left, right)
      result = []

      result << (left.first <= right.first ? left.shift : right.shift) until left.length == 0 || right.length == 0

      result + left + right
    end
  end
end
