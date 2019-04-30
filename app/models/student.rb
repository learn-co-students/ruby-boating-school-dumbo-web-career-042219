class Student

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_test_name, status, instructor)
    BoatingTest.new(self, boating_test_name, status, instructor)
  end

  def self.find_student(this_first_name)
    self.all.select {|student| student.first_name = this_first_name}
  end

  def grade_percentage
    total_tests = BoatingTest.all.select {|test| test.student == self}
    passed_tests = total_tests.select {|test| test.status == "passed"}
    percent = ((passed_tests.size.to_f/total_tests.size.to_f)*100).round(2)
    # percent.to_f
  end


end
