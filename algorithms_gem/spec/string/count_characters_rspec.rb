require "string/count_characters"

RSpec.describe "count characters" do
  it "Return if count characters" do
    string = '#GeeKs01fOr@gEEks07'

    count = PString::CountCharacter.new(string).count

    expect(count[:upper]).to eq(5)
    expect(count[:down]).to eq(8)
    expect(count[:special]).to eq(2)
    expect(count[:number]).to eq(4)
  end

  it "Retrun if count characters 2" do
    string = 'FemY%*10A4V1m7&'

    count = PString::CountCharacter.new(string).count

    expect(count[:upper]).to eq(4)
    expect(count[:down]).to eq(3)
    expect(count[:special]).to eq(3)
    expect(count[:number]).to eq(5)
  end
end
