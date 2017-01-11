module Reporting
  def send_report
    puts "Sending Email..."
    #code to send email
    puts "Email Sent."
  end
end


class Employee
  attr_reader :first_name, :last_name, :salary, :active  #THIS IS THE READER METHOD. IT TAKES THE DEF INITIALIZE AND PUTS IT 
  #CLASS OF EMPLOYEE. 
  attr_writer :active #THIS IS THE WRITER METHOD. IT TAKE THE ATTR WRITER AND MAKES IT ACTIVE

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
    @salary = @salary * 1.05
  end
end

class Manager < Employee
  include Reporting

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

class Intern < Employee
  include Reporting
end

employee_1 = Employee.new({
                          first_name: "John", 
                          last_name: "Mulaney", 
                          salary: 50000, 
                          active: true
                          })

employee_2 = Employee.new(
                          first_name: "Maria", 
                          last_name: "Bamford", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Max",
                      last_name: "Powers",
                      salary: 120000,
                      active: true,
                      :employees => [employee_1, employee_2]
                      )


employee_1.print_info
# manager.print_info




