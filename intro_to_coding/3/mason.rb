class Department
  def initialize(name:)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def name
    @name
  end

  def total_salary
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    total
  end

  def give_raise(total_raise)
    good_employees = []
    employees.each do |employee|
      good_employees << employee if employee.is_good
    end
    good_employees.each do |employee|
      employee.give_raise(total_raise.to_f / good_employees.count)
    end
  end
end

class Employee
  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  def name
    @name
  end

  def salary
    @salary
  end

  def set_review(review)
    @review = review
  end

  def set_performance(perf)
    @performance = perf
  end

  def is_good
    @performance
  end

  def give_raise(dollars)
    @salary += dollars
  end
end
