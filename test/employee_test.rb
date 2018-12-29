require_relative 'test_helper'

class EmployeeTest < Minitest::Test
  
  def setup
    @employee = Employee.new({name: "Alice Smith", age: 20, salary: "50000"})
  end

  def test_it_exists
	   assert_instance_of Employee, @employee
	end

	def test_it_has_name
		assert_equal "Alice Smith", @employee.name
	end

	def test_it_has_age
		assert_equal 20, @employee.age
	end

	def test_it_has_salary
		assert_equal 50000, @employee.salary
	end
end
