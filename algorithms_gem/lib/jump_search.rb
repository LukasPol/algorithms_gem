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

      while @arr[[step,len].min] < @number do
        prev = step

        step += Math.sqrt(len)

        return -1 if prev >= len
      end

      while @arr[prev] < @number do
        prev += 1

        return -1 if prev == [step, len].min
      end

      if @arr[prev] == @number
        return prev.to_i
      end

      return -1
    end
end