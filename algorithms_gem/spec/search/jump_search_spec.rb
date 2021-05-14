require "search/jump_search"

RSpec.describe "jump Search" do
  it "If return element's index in array" do
    arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    number = 21

    index = Search::JumpSearch.new(arr, number).search

    expect(index).to eq(8)
  end

  it "If return -1, if not is in array" do
    arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    number = 50
    len = arr.length - 1

    index = Search::JumpSearch.new(arr, number).search

    expect(index).to eq(-1)
  end
end
