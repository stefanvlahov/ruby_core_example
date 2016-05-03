# employee1 = ["John", "Smith", 60000, true]
# employee2 = ["Jane", "Doe", 70000, true]
#
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} a year."

# employee1 = { "first_name" => "John", "last_name" => "Smith", "salary" => 60000, "active" => true}
# employee2 = { "first_name" => "Jane", "last_name" => "Doe", "salary" => 70000, "active" => true}
#
# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."

puts

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end
end

employee1 = Employee.new("John", "Smith", 60000, true)
employee1.print_info
