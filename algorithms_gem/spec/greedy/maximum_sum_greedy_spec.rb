require "greedy/maximum_sum_greedy"

RSpec.describe "Maximum Sum Greedy" do
  it "If return Maximun Sum" do
    arr = [9, 8, 8, 5]
    k = 3

    arr_sort = Greedy::MaximumSumGreedy.new(arr, k).maxSum

    expect(arr_sort).to eq(20)
  end

  it "If return Maximun Sum 2" do
    arr = [-2, 0, 5, -1, 2]
    k = 4

    arr_sort = Greedy::MaximumSumGreedy.new(arr, k).maxSum

    expect(arr_sort).to eq(10)
  end
end
