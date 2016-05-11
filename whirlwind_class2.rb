students = 0
group1 = []
group2 = []

loop do

  puts "Enter student first name:"
  student1 = gets.chomp
  group1 << student1 unless student1 == "done"
  students += 1
  break if student1 == "done"

  puts "Enter student first name:"
  student2 = gets.chomp
  group2 << student2 unless student2 == "done"
  students +=1
  break if student2 == "done"

end

groups = []
groups << group1 << group2

groups.each do |group|
  if group.count > 2 && group.count % 2 == 0
    group = group.each_slice(2).to_a
      group.each do |mini|
        puts "Group:" + mini.to_s
      end
  else
    puts "Group:" + group.to_s
  end
end
