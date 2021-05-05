class BinarySearch
  def initialize(arr, left, right, number)
    @arr = arr
    @left = left
    @right = right
    @number = number
  end

  def search
    find_element(@arr, @left, @right, @number)
  end

  private
    def find_element(arr, left, right, number)
      if right >= left
        mid = left + (right-left) / 2
        mid = mid.floor

        if arr[mid] == number
          return mid

        elsif arr[mid] > number
          right = mid - 1
          return find_element(arr, left, right, number)

        else
          left = mid + 1
          return find_element(arr, left, right, number)
        end

      else
        return -1
      end
    end
end