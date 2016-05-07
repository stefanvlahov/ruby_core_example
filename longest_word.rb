# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence),
# and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  long_word = ""
  words = sentence.split(" ")
  words.each do |word|
    long_word = word unless (word.length < long_word.length) || word.include?("?")
  end
  long_word
end
#
# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end
