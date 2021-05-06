class JumpSearch
  def initialize(arr, number)
    @arr = arr
    @number = number
  end

  def search
    find_element
  end

  private

  def find_element
    len = @arr.size - 1
    step = Math.sqrt(len)

    prev = 0

    while @arr[[step, len].min] < @number
      prev = step

      step += Math.sqrt(len)

      return -1 if prev >= len
    end

    while @arr[prev] < @number
      prev += 1

      return -1 if prev == [step, len].min
    end

    return prev.to_i if @arr[prev] == @number

    -1
  end
end
