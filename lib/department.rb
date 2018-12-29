class Department

  attr_reader :name,
              :employees

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def employee_count
    @employees.count
  end

  def total_payroll
    @employees.sum {|employee| employee.salary}
  end

  def average_salary
    total_payroll.to_f / @employees.count
  end

end
