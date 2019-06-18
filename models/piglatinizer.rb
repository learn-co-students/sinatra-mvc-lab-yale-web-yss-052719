class PigLatinizer
    attr_reader :string

    def piglatinize(string)
        
        arr = []
        splitstr = string.split
        if splitstr.size > 1
            splitstr.each do |str|
                firstletter = str[0].downcase
                secondletter = str[1]
                thridletter = str[2]
                if ["a", "e", "i", "o", "u"].include?(firstletter)
                    temp = str + "way"
                elsif !["a", "e", "i", "o", "u"].include?(firstletter) && !["a", "e", "i", "o", "u"].include?(secondletter) && !["a", "e", "i", "o", "u"].include?(thridletter)
                    temp = str.slice(3..-1) + str.slice(0, 3) + "ay"
                elsif !["a", "e", "i", "o", "u"].include?(firstletter) && !["a", "e", "i", "o", "u"].include?(secondletter)
                    temp = str.slice(2..-1) + str.slice(0, 2) + "ay"
                else
                    temp = str.slice(1..-1) + str.slice(0, 1) + "ay"
                end
                arr << temp
            end
            
            # binding.pry
            return arr.join(" ")
        else 
            # binding.pry
            firstletter = string[0].downcase
            secondletter = string[1]
            thridletter = string[2]
                
            if ["a", "e", "i", "o", "u"].include?(firstletter)
                 temp = string + "way"
            elsif !["a", "e", "i", "o", "u"].include?(firstletter) && !["a", "e", "i", "o", "u"].include?(secondletter) && !["a", "e", "i", "o", "u"].include?(thridletter)
                temp = string.slice(3..-1) + string.slice(0, 3) + "ay"
            elsif !["a", "e", "i", "o", "u"].include?(firstletter) && !["a", "e", "i", "o", "u"].include?(secondletter)
                temp = string.slice(2..-1) + string.slice(0, 2) + "ay"
            else
                temp = string.slice(1..-1) + string.slice(0, 1) + "ay"
            end                
            # binding.pry
            return temp
        end

    end



end