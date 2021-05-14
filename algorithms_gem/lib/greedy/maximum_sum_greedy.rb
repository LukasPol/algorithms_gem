module Greedy
  class MaximumSumGreedy
    def initialize(arr, k)
      @arr = arr
      @k = k
    end

    def maxSum
      sum
    end

    private

    def sum
      @k.times do
        min = @arr.max

        index = 0
        @arr.each_with_index do |item, i|
          if item < min
            min = item
            index = i
          end
        end

        next if min == 0

        @arr[index] = -@arr[index]
      end

      amount = @arr.sum

      amount
    end
    
  end
end