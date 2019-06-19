class PigLatinizer

    def piglatinize(words)
        word_array = words.split(" ")
        pig_words = word_array.map do |word|
            if /[aeiouAEIOU]/.match?(word[0])
                word + "way"
            else
                letters = word.split("")
                ending = []
                for i in 0..letters.size
                    if /[aeiouAEIOU]/.match?(letters[i])
                        new_letters = letters[i..letters.size-1]
                        break
                    else
                        ending << letters[i]
                    end
                end
                ending << ["a", "y"]
                new_letters << ending
                new_letters.flatten
                new_word = new_letters.join("")
            end
        end
        pig_words.join(" ")
    end

end