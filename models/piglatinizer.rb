class PigLatinizer

    attr_reader :text

    def piglatinize(sentence)
    
        words = sentence.split(" ")
        words.map do |word|
            piglatinize_word(word)
        end.join(" ")

    end

    def piglatinize_word(text)
        a1 = text.split('')
        vowels = ['a', 'e', 'i', 'o', 'u']
        if vowels.include?(a1[0].downcase)
            @text = a1.push("way").join
        else
            a1.length.times do |letter|
                if !vowels.include?(a1[0])
                    temp = a1.shift
                    a1.push(temp)
                else
                    break
                end
            end
            # binding.pry

            @text = a1.push("ay").join
        end
        @text
    end

end