class Employee

  attr_reader :name,
              :age,
              :salary

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @salary = info[:salary].to_i
  end

end
