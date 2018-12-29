class Company

  attr_reader :name

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def payroll
    @departments.sum {|department| department.total_payroll}
  end

  def average_age
    total_age = 0
    count = 0
    @departments.each do |department|
      department.employees.each do |employee|
        count += 1
        total_age += employee.age
      end
    end
    total_age.to_f / count
  end

  def roster
    roster = {}
    @departments.each do |department|
      roster[department.name] = department.employees.map do |employee|
        employee.name
      end
    end
    roster
  end

  def department_payroll
    payroll = {}
    @departments.each do |department|
      payroll[department.name] = department.total_payroll
    end
    payroll
  end

end
