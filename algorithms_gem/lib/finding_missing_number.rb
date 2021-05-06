class FindingMissingNumber
  def initialize(arr)
    @arr = arr
    @len = @arr.length
  end

  def find
    missing_number
  end

  private

  def missing_number
    total = (@len + 1) * (@len + 2) / 2

    amount = 0

    @arr.each do |item|
      amount += item
    end

    total - amount
  end
end
