class Student
  attr_reader :name
  @@students = [] 

  def initialize(first_name)
    @name = first_name
    self.class.all << self
  end

  def self.all
    @@students
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.name = first_name}
  end

  def grade_percentage
    passed = tests_taken.map {|test| test.status == "passed"}
    (passed.count * 1.0) / tests_taken.count
  end

  def tests_taken
    BoatingTest.all.select {|boating_test| boating_test.student == self}
  end 

end
