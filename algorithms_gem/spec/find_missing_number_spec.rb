require "finding_missing_number"

RSpec.describe "Finding Missing Number" do
  it "If return element missing in array" do
    arr = [1, 2, 4, 5, 6]

    index = FindingMissingNumber.new(arr).find

    expect(index).to eq(3)
  end

  it "If return element missing in array" do
    arr = [7, 2, 3, 1, 4, 6]

    index = FindingMissingNumber.new(arr).find

    expect(index).to eq(5)
  end
end
