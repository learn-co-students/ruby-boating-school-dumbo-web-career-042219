class Student
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, instructor)
    BoatingTest.new(self, test_name, instructor)
  end

  def self.find_student(name)
    @@all.find{|student| name == student.first_name}
  end

  def grade_percentage(student_name)
    count=0
    fail= 0
    student_arr =BoatingTest.all.select do |students|
      students.student == student_name
    end
    student_arr.each do |student|
      if student.test_status == "pass"
        count += 1
      elsif student.test_status == "fail"
        count += 1
        fail += 1
      end
      (count)/(fail)
    end
  end


  # should initialize with first_name
  # Student.all should return all of the student instances
  # Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  # Student.find_student will take in a first name and output the student (Object) with that name
  # Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
end
