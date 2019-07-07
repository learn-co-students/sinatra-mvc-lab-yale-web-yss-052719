class PigLatinizer

  def piglatinize(input)
    # @input = input
    sp = input.split(" ")
    sp_t = sp.map do |word|
      pig_word(word)
    end
    sp_t.join(" ")
  end

  def pig_word(word)
    first = word[0].downcase
    vowel_arr = ["a", "e", "i", "o", "u"]
    if vowel_arr.include?(first)
        "#{word}way"
    else
        others = []
        others << word[0]
        if vowel_arr.include?(word[1]) == false
          others << word[1]
          if vowel_arr.include?(word[2]) == false
                others << word[2]
            end
        end
      "#{word[others.length..-1] + others.join + "ay"}"
    end

end





 end
