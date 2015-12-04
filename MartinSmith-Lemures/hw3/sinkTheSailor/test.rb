
require_relative "./sanitize"

dirtywords=[ "fug", "shit", "bitch", "sailor"]
phrase = "well fug the sailors, they couldn't do shit"


#phrase.split(/\s/).collect!{|word| Sanitize.new(word, dirtywords)}.join(" ")

#p phrase.split(/\s/)

#p phrase.split(/\s/).collect{|word| puts "#{word}!"}

p phrase.split(/\s/).collect{|word| word + "!"}.join(" ")

#puts sanitized