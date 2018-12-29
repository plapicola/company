require_relative 'test_helper'

class DepartmentTest < Minitest::Test

  def setup
    @employee_1 = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
    @employee_2 = Employee.new({name: "Bobbi Jaeger", age: 30, salary: "100000"})
    @department = Department.new("Accounting")
  end

  def test_it_exists
    assert_instance_of Department, @department
  end

  def test_it_has_a_name
    assert_equal "Accounting", @department.name
  end

  def test_it_has_no_employees_by_default
    assert_equal 0, @department.employee_count
  end

  def test_it_can_add_employees
    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)

    assert_equal 2, @department.employee_count
  end

  def test_it_can_return_all_employees
    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)

    assert_equal [@employee_1, @employee_2], @department.employees
  end

  def test_it_can_determine_total_payroll
    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)
    
    assert_equal 150000, @department.total_payroll
  end

  def test_it_can_return_average_salary_for_all_employees
    @department.add_employee(@employee_1)
    @department.add_employee(@employee_2)

    assert_equal 75000, @department.average_salary
  end
end
