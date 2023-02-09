require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word=word
    end

    def match(array)
        # use filter/select to return matching anagrams
        array.filter do |test| 
            test.chars.sort == @word.chars.sort            
        end
    end  


end

apt = Anagram.new("apt")
puts apt.match(["pat", "tap", "jose"]) 