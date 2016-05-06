# count = 0
#
# until count == 10
#   puts count += 1
# end
# result = false
# unless result == true
#   puts "HELLO!"
# end

sam_recipes = ["avocado club", "grilled cheese", "salad", "chicken wrap", "bamboo stick"]
sally_langages = ["French", "English", "Japanese", "Spanish", "Swahili", "Mandarin"]

if sam_recipes.count > 10 && sally_langages.count > 5
  puts "Sam and Sally are getting married!"
else
  puts "Sam and Sally are not getting married!"
end
