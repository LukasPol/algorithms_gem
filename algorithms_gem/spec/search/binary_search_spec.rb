require "search/binary_search"

RSpec.describe "Binary Search" do
  it "If return element's index in array" do
    arr = [1, 3, 4, 10, 40, 55, 90]
    number = 90
    len = arr.length - 1

    index = Search::BinarySearch.new(arr, 0, len, number).search

    expect(index).to eq(6)
  end

  it "If return -1, if not is in array" do
    arr = [1, 6, 2, 9, 10]
    number = 50
    len = arr.length - 1

    index = Search::BinarySearch.new(arr, 0, len, number).search

    expect(index).to eq(-1)
  end
end
