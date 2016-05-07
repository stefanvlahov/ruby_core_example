# count = 0
#
# until count == 10
#   puts count += 1
# end
# result = false
# unless result == true
#   puts "HELLO!"
# end
#
# sam_recipes = ["avocado club", "grilled cheese", "salad", "chicken wrap", "bamboo stick", "crepes"]
# sally_langages = ["French", "English", "Japanese", "Spanish", "Swahili", "Mandarin"]
#
# if sam_recipes.count > 10 && sally_langages.count > 5
#   puts "Sam and Sally are getting married!"
# else
#   puts "Sam and Sally are not getting married!"
# end
#
# if sam_recipes.include?("crepes") && sally_langages.include?("French")
#   puts "Sam and Sally are getting married!"
# else
#   puts "Sam and Sally are not getting married!"
# end

# sam_recipes = 0
# sally_langages = 0
#
# until sam_recipes > 10 && sally_langages > 5
#   puts "Sam has learned a new recipe!"
#   sam_recipes += 1
#   puts "Sally has learned a new language!"
#   sally_langages += 1
# end
#
# puts "Sam and Sally can get married!"

sam_recipes = []
sally_languages = []

until sam_recipes.count > 10
  puts "Enter a recipe Sam has learned:"
  recipe = gets.chomp
  sam_recipes << recipe
end

until sally_languages.count > 5
  puts "Enter a language Sally has learned:"
  language = gets.chomp
  sally_languages << language
end

if sam_recipes.count > 10 && sally_languages.count > 5
  puts "Sam and Sally are getting married!"
else
  puts "Sam and Sally are not getting married"
end

if sam_recipes.include?("crepes") && sally_languages.include?("French")
  puts "Sam and Sally are getting married!"
else
  puts "Sam and Sally are not getting married!"
end
