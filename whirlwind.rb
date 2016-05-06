foods = []

5.times do
  puts "Please enter your favorite food:"
  favorite = gets.chomp
  foods << favorite
end

count = 0

foods.each do |food|
  count += 1
  puts "#{count}. #{food}"
end
