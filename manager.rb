module Reporting # this is the module method. it is used as a smaller version of class. 
  def send_report
    puts "Sending Email..."
    #code to send email
    puts "Email Sent."
  end
end


class Employee # here we are defining the class of Employee here 
  attr_reader :first_name, :last_name, :salary, :active  #THIS IS THE READER METHOD. IT TAKES THE DEF INITIALIZE AND PUTS IT 
  #CLASS OF EMPLOYEE. OTHERWISE KNOWN AS THE GETTER.
  attr_writer :active #THIS IS THE WRITER METHOD. IT TAKES @active AND MAKES IT ACTIVE. OTHERWISE KNOWN AS THE SETTER.

  def initialize(input_options) #this is a def initialize that holds 4 variables listed below.
      @first_name = input_options[:first_name] # @first_name is a variable made equal to input options. :first_name plugs into 
          #input_options
      @last_name = input_options[:last_name] #same format as above
      @salary = input_options[:salary] #see above
      @active = input_options[:active] # see above
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year." # this is def that prints first_name, last_name and salary.
  end

  def give_annual_raise
    @salary = @salary * 1.05  # this is a def that mutiplies @salary * 1.05 ie. raise 
  end
end

class Manager < Employee  # this is new class called Manager that is inheriting from class Employee
  include Reporting  # here we are calling the module called Reporting that is listed above 
          # so we are getting all def's listed in Employee plus any additional def listed in the module Reporting

  def initialize(input_options) #Here we are calling def initialize on input options
    super #this is the super cmd that inherits from class
    @employees = input_options[:employees]
  end

  def give_all_raises  
    @employees.each do |employee|   # here we are taking @employees and iterating through the and placing in the block variable 
      employee.give_annual_raise # here we take the block variable and calling the method give_annual_raise on it
    end
  end

  def fire_all_employees  
    @employees.each do |employee| # here we follow the same procedure as above
      employee.active = false # this line calls the method active on the block variable
    end
  end
end

class Intern < Employee  # this is another class that is inheriting from Employee
  include Reporting # The module Reporting is called here
end

employee_1 = Employee.new({   # here we call the class Employee on employee_1
                          first_name: "John", 
                          last_name: "Mulaney", 
                          salary: 50000, 
                          active: true
                          })

employee_2 = Employee.new(  # here we call the class Employee on employee_2
                          first_name: "Maria", 
                          last_name: "Bamford", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(    # here we call the class Manager on manager
                      first_name: "Max",
                      last_name: "Powers",
                      salary: 120000,
                      active: true,
                      :employees => [employee_1, employee_2]
                      )


employee_1.print_info
# manager.print_info




