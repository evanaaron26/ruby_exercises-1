require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee_1 = Actualize::Employee.new({
                          first_name: "John", 
                          last_name: "Mulaney", 
                          salary: 50000, 
                          active: true
                          })

employee_2 = Actualize::Employee.new(
                          first_name: "Maria", 
                          last_name: "Bamford", 
                          salary: 80000, 
                          active: true
                          )

manager = Actualize::Manager.new(
                      first_name: "Max",
                      last_name: "Powers",
                      salary: 120000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Actualize::Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 12000,
                    active: true
                    )

employee_1.print_info
manager.print_info
intern.print_info
intern.send_report
