require_relative 'test_helper'

class EmployeeTest < Minitest::Test
  def test_it_exists
		employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})

		assert_instance_of Employee, employee
	end

	def test_it_has_name
		employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})

		assert_equal "Alice Smith", employee.name
	end

	def test_it_has_age
		employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})

		assert_equal 20, employee.age
	end

	def test_it_has_salary
		employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})

		assert_equal 50000, employee.salary
	end
end
