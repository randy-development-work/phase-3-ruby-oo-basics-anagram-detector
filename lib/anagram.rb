require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word=word
    end

    def match(array)
        new_arr = []
        # use filter/select to return matching anagrams
        array.map do |test| 
            test.chars.sort == @word.chars.sort ? new_arr.push(test) : nil               
                    
        end
        new_arr
    end  


end

apt = Anagram.new("apt")
puts apt.match(["pat", "tap", "jose"]) 