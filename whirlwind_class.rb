students = 0
group1 = []
group2 = []
until students % 2 == 0 && students > 10

  puts "Enter student first name:"
  student1 = gets.chomp
  group1 << student1
  students += 1

  puts "Enter student first name:"
  student2 = gets.chomp
  group2 << student2
  students +=1

end

groups = [group1, group2].transpose

groups.each do |group|
  puts "Group:" + group.to_s
end

p groups




# puts ""
# puts "Group: #{groups[0][0]} #{groups[0][1]}"
# puts "Group: #{groups[1][0]} #{groups[1][1]}"
# puts "Group: #{groups[2][0]} #{groups[2][1]}"
# puts "Group: #{groups[3][0]} #{groups[3][1]}"
# puts "Group: #{groups[4][0]} #{groups[4][1]}"
# puts "Group: #{groups[5][0]} #{groups[5][1]}"
