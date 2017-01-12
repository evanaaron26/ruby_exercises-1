require "./employee.rb"  # this is an example of a runner file. the files to the left are linking to other files. 
#use this syntax to connect other files. This is done to streamline the program so its not too complex on one page. 
require "./manager.rb" # SAA 
require "./intern.rb" # SAA 

employee_1 = Actualize::Employee.new({  #this is syntax to set up a new instance of employee. the following variables 
  #constitute employee_1
                          first_name: "John", 
                          last_name: "Mulaney", 
                          salary: 50000, 
                          active: true
                          })

employee_2 = Actualize::Employee.new( # see above for employee_1
                          first_name: "Maria", 
                          last_name: "Bamford", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new( # see above for employee_2
                      first_name: "Max",
                      last_name: "Powers",
                      salary: 120000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Actualize::Intern.new( # see above for manager
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 12000,
                    active: true
                    )

employee_1.print_info  # this is printing the variable employee_1
manager.print_info #SAA
intern.print_info # SAA
intern.send_report # SAA
