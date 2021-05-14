# P = Problems

module PString
  class CountCharacter
    attr_reader :string, :counter

    def initialize(string)
      @string = string
      @counter = {upper: 0, down: 0, number: 0, special: 0 }
    end

    def count
      count_char
    end

    private

    def count_char
      @string.each_byte do |char|
        if char >= 65 && char <= 90
          counter[:upper] += 1
        elsif char >= 97 && char <= 122
          counter[:down] +=1
        elsif char >= 48 && char <= 57
          counter[:number] +=1
        else
          counter[:special] +=1
        end
      end
      counter
    end
  end
end