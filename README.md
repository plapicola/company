# Company

Clone this repo: git@github.com:turingschool-examples/company.git

Complete the activity below:

## Iteration 1 (Tests Provided)

Use the tests provided to create an `Employee` class that follows this interaction pattern:

```ruby
employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
# => <#Employee:32847432>
employee.name
# => "Alice Smith"
employee.age
# => 20
employee.salary
# => 50000

```

## Iteration 2

Use TDD to create a `Department` class that responds to the following interaction pattern:

```ruby
employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
# => <#Employee:32847432>
employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
# => <#Employee:65745667>
department = Department.new("Accounting")
# => <#Department:3457689435>
department.name
# => "Accounting"
department.employee_count
# => 0
department.add_employee(employee_1)
# => 1
department.employee_count
# => 1
department.add_employee(employee_2)
# => 2
department.employee_count
# => 2
department.employees
# => [<#Employee:32847432>, <#Employee:65745667>]
department.average_salary
# => 75000
```

## Iteration 3

Use TDD to create a `Company` class that responds to the following interaction pattern:

```ruby
employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
# => <#Employee:32847432>
employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
# => <#Employee:65745667>
employee_3 = Employee.new({name: "Stephanie Jones", age: 30, salary: "150000"})
# => <#Employee:32847432>
employee_4 = Employee.new({name: "Janssen Tanaka", age: 50, salary: "200000"})
# => <#Employee:65745667>
department_1 = Department.new("Accounting")
# => <#Department:3457689435>
department_2 = Department.new("Security")
# => <#Department:8457875458>
company = Company.new("Ares Macrotechnology")
department_1.add_employee(employee_1)
# => 1
department_1.add_employee(employee_2)
# => 2
department_2.add_employee(employee_3)
# => 1
department_2.add_employee(employee_4)
# => 2
company.add_department(department_1)
# => <#Department:3457689435>
company.add_department(department_2)
# => <#Department:8457875458>
company.payroll
# => 500000
company.average_age
# => 32.5
```

## Iteration 4

Use TDD to update your `Company` class so that is responds to the following interaction pattern:

```ruby
employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
# => <#Employee:32847432>
employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
# => <#Employee:65745667>
employee_3 = Employee.new({name: "Stephanie Jones", age: 30, salary: "150000"})
# => <#Employee:32847432>
employee_4 = Employee.new({name: "Janssen Tanaka", age: 50, salary: "200000"})
# => <#Employee:65745667>
department_1 = Department.new("Accounting")
# => <#Department:3457689435>
department_2 = Department.new("Security")
# => <#Department:8457875458>
company = Company.new("Ares Macrotechnology")
department_1.add_employee(employee_1)
# => 1
department_1.add_employee(employee_2)
# => 2
department_2.add_employee(employee_3)
# => 1
department_2.add_employee(employee_4)
# => 2
company.add_department(department_1)
# => <#Department:3457689435>
company.add_department(department_2)
# => <#Department:8457875458>
company.roster
# => {"Accounting" => ["Alice Smith", "Bobbi Jaeger"], "Security" => ["Stephanie Jones", "Janssen Tanaka"]}
company.department_payroll
# => {"Accounting" => 150000, "Security" => 350000}
```
