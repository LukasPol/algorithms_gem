require 'linear_search'

RSpec.describe 'Linear Search' do
  it "If return element's index in array" do
    list = [1, 6, 2, 9, 10]
    number = 9

    index = LinearSearch.new(list, number).search

    expect(index).to eq(3)
  end

  it "If return -1, if not is in array" do
    list = [1, 6, 2, 9, 10]
    number = 50

    index = LinearSearch.new(list, number).search

    expect(index).to eq(-1)
  end
end