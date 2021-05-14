require "string/missing_character"

RSpec.describe "Missing character" do
  it "Return if Missing character" do
    setence = 'The quick brown fox jumps over the little lazy dog'

    expect(PString::MissingCharacter.new(setence).missing?).to be true
  end

  it "Retrun if Missing character 2" do
    setence = 'The quick brown fox jumps over the little lazy do'

    expect(PString::MissingCharacter.new(setence).missing?).to be false
  end
end
