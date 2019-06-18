class PigLatinizer

    def initialize
    end

    def piglatinize(string)
        @string = string
        a = @string.split(" ")
        b = a.map do |word|
            method_word(word)
        end
        b.join(" ")
    end

    def method_word(word)
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
              if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                  consonants << word[2]
                end
              end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end

end