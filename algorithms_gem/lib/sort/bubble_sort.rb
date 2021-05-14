module Sort
  class BubbleSort
    def initialize(arr)
      @arr = arr
      @len = @arr.length
    end

    def sort
      bubble_sort
    end

    private

    def bubble_sort
      return @arr if @len <= 1

      loop do
        swapped = false
    
        (@len-1).times do |i|
          if @arr[i] > @arr[i+1]
            exp = @arr[i]
            @arr[i] = @arr[i+1]
            @arr[i+1] = exp
    
            swapped = true
          end
        end
    
        break if not swapped
      end
    
      @arr
    end
  end
end