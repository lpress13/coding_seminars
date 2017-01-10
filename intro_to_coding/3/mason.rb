class Department
  attr_reader :name

  def initialize(name:)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def total_salary
    @employees.reduce(0) {|sum, e| sum + e.salary}
  end

  def give_raise(total_raise)
    good_employees = employees.select {|e| employee.is_good?}

    good_employees.each do |employee|
      employee.give_raise(total_raise.to_f / good_employees.count)
    end
  end
end

class Employee
  attr_reader :name, :salary, :review
  attr_writer :review, :performance

  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  def is_good?
    @performance
  end

  def give_raise(dollars)
    @salary += dollars
  end
end

locky = Employee.new(...)
locky.review=("Okayest employee ever")
