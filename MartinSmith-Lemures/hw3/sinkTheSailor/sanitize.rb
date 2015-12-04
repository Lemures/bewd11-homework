#dirtyWords = [ "fug", "shit", "bitch", "sailor"]
class Sanitize

    def initialize(word, dirtywords)
        @dirtyWords = dirtywords
       if @dirtyWords.include?(word)
             word.gsub(/./, "*")
        end
    end
end


