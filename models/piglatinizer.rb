require 'pry'
class PigLatinizer

	def piglatinize(words)

		words = words.split(" ")
		words.map do |word|
			length = word.size
			suffix = []

			wordC = word.tr("AaEeIiOoUu", "*").split(//)

			start = wordC.find_index do |letter|
				letter == "*"
			end
	
			if start > 0
				suffix = word[0...start]
				word[start..-1] + suffix + "ay"
			else
				word + "way"
			end
			
		end.join(" ")

	end
end