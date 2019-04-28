class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)

    #should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  end

  def self.find_student(first_name)
    @@all.find {|a| a.first_name == first_name}

    # will take in a first name and output the student (Object) with that name
  end

  def grade_percentage
    array = BoatingTest.all.select {|test| test.student == self }

    array_passed = array.select {|pass| pass.status == "passed"}

    grade = (array_passed.length.to_f / array.length)

    grade


    #should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
  end

end
