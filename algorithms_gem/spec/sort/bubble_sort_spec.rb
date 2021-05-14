require "sort/bubble_sort"

RSpec.describe "Bubble Sort" do
  it "If return array sorted" do
    arr = [1, 55,  4, 10, 90, 3, 40]

    arr_sort = Sort::BubbleSort.new(arr).sort

    expect(arr_sort).to eq(arr.sort)
  end

  it "If return array sorted 2" do
    arr = [130, 260, 539, 3, 97, 33, 1]

    arr_sort = Sort::BubbleSort.new(arr).sort

    expect(arr_sort).to eq(arr.sort)
  end
end
