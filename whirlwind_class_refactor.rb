students = []
input = ""

while input != "done"
  puts "Enter student name:"
  input = gets.chomp
  if input == "done"
    break
  end
  students << input
end

until students.count <= 0
  if students.count == 3
    puts "Group: #{students.pop(3)}"
  else
    puts "Group: #{students.pop(2)}"
  end
end
