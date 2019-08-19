require_relative "Employee"

class Manager < Employee 

  def initialize(name, title, salary, boss)
    super
    @employees = []
  end 

  def add_employee(employee)
    @employees << employee
  end 

  def bonus(multiplier)
    ans = 0
    @employees.each {|emp| ans += emp.salary}
    ans * multiplier
  end
end 