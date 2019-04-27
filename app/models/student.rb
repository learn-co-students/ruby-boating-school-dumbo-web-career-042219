class Student

  attr_accessor :first_name

  @@students = []

  def initialize(first_name)
    @first_name = first_name
    @@students << self
  end

  def self.all
    @@students
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.select {|student| student.first_name == first_name}
  end

  def grade_percentage
    student_tests = BoatingTest.all.select {|student| student.student.first_name == self.first_name}
    passed_test_num = 0
    total_test_num = 0
    student_tests.each do |student_test|
      if student_test.status == "passed"
        passed_test_num += 1
        total_test_num += 1
      else
        total_test_num += 1
      end
    end
    return (passed_test_num.to_f) / (total_test_num.to_f) * 100
  end

end
