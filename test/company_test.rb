require_relative 'test_helper'

class CompanyTest < Minitest::Test

  def setup
    @employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    @employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
    @employee_3 = Employee.new({name: "Stephanie Jones", age: 30, salary: "150000"})
    @employee_4 = Employee.new({name: "Janssen Tanaka", age: 50, salary: "200000"})
    @department_1 = Department.new("Accounting")
    @department_2 = Department.new("Security")
    @department_1.add_employee(@employee_1)
    @department_1.add_employee(@employee_2)
    @department_2.add_employee(@employee_3)
    @department_2.add_employee(@employee_4)
    @company = Company.new("Ares Macrotechnology")
  end

  def test_it_exists
    assert_instance_of Company, @company
  end

  def test_it_has_a_name
    assert_equal "Ares Macrotechnology", @company.name
  end

  def test_it_can_determine_payroll
    @company.add_department(@department_1)
    @company.add_department(@department_2)

    assert_equal 500000, @company.payroll
  end

  def test_it_can_determine_average_age
    @company.add_department(@department_1)
    @company.add_department(@department_2)

    assert_equal 32.5, @company.average_age
  end

  def test_it_has_a_roster_of_employees_by_department
    @company.add_department(@department_1)
    @company.add_department(@department_2)
    expected = {"Accounting" => ["Alice Smith", "Bobbi Jaeger"],
                "Security" => ["Stephanie Jones", "Janssen Tanaka"]}

    assert_equal expected, @company.roster
  end

  def test_it_can_determine_payroll_by_department
    @company.add_department(@department_1)
    @company.add_department(@department_2)
    expected = {"Accounting" => 150000, "Security" => 350000}

    assert_equal expected, @company.department_payroll
  end

end
