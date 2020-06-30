
class PigLatinizer
    attr_reader :words
   
    def initialize(words)
      @words = words
    end
   
    def piglatinize   
      words = words.downcase.split(" ")
      words.collect do |word|
        if word.scan(/^[aeiou]/) > 0 #aka if word starts with vowel. Since .scan returns an array, the array count would be 1, cause the .scan would return an array containing the word it found that started with a vowel
           word.concat("way") #.concat adds string to end of word
        else 
            word.slice!(0) until word.scan(/^[aeiou]/) > 0  #slice removes first letter of word, aka first position (0). 
            word.concat("ay")
        end
        end
    end
    
end

 