module Reports
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  include Reports

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      if employee.active
        employee.give_annual_raise
      end
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      if employee.active == true
        employee.active = false
      end
    end
  end
end

class Intern < Employee
  include Reports
end


employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info
#
manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
p manager.fire_all_employees
intern = Intern.new(first_name: "Stefan", last_name: "Vlahov", salary: 20000, active: true)
intern.print_info
