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

  def first_name=(input_first_name)
    @first_name = input_first_name
  end

end

employee1 = Employee.new({ first_name: "John", last_name: "Smith", salary: 60000, active: true})
employee2 = Employee.new({ first_name: "Jane", last_name: "Doe", salary: 70000, active: true})
p employee1

class Manager < Employee

  # attr_writer
  attr_accessor :employees

  def initialize(input_options)
    super(input_options) # this is where the method from super class is run
    @employees = input_options[:employees]
  end

  def send_report
    puts "sending email..."
    #codethat send email
    puts "Email sent"
  end

end

employee1 = Employee.new({ first_name: "John", last_name: "Smith", salary: 60000, active: true})
employee2 = Employee.new({ first_name: "Jane", last_name: "Doe", salary: 70000, active: true})
employee3 = Manager.new(
first_name: "Josh",
last_name: "Nixon",
salary: 100000,
active: true,
employees: [employee1, employee2]
)

p employee3.employees[1].first_name
employee3.send_report
