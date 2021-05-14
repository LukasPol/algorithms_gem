# P = Problems

module PString
  class MissingCharacter
    def initialize(setence)
      @setence = setence.downcase.split('')
      @letters = letters = ('a'..'z').to_a
    end

    def missing?
      search_character
    end

    private

    def search_character
      @setence.each do |chars|
        next if chars == ' '
    
        @letters.delete_if { |letter| letter == chars }
        # if index_letter
        #   list[index_letter] = true
        # end
      end

      puts @letters.empty?

      @letters.empty?
    end
  end
end