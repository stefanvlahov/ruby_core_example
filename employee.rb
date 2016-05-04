# employee1 = ["John", "Smith", 60000, true]
# employee2 = ["Jane", "Doe", 70000, true]
#
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} a year."
#
# employee1 = { first_name: "John", last_name: "Smith", salary: 60000, active: true}
# employee2 = { first_name: "Jane", last_name: "Doe", salary: 70000, active: true}
#
# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."
# p employee1[:first_name]
# puts

class Employee

  attr_reader :active, :salary
  # attr_writer
  attr_accessor :first_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    if input_options[:active]
      @active = input_options[:active]
    else
      @active = true
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary *=  1.05
  end

  # def first_name=(input_first_name)
  #   @first_name = input_first_name
  # end

end

employee1 = Employee.new({ first_name: "John", last_name: "Smith", salary: 60000, active: true})
employee2 = Employee.new({ first_name: "Jane", last_name: "Doe", salary: 70000, active: true})
p employee1
# employee1.change_first_name=("Bill")
# employee1.print_info
# p employee2.active
