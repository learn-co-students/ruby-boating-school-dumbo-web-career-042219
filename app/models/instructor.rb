class Instructor

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, boating_test_name)
    # First look through all BoatingTests and find the one BoatingTest that matches the arguments
    # If none is found, create a new BoatingTest
    # Change status of BoatingTest
    # Create return values: it will either be a FOUND BoatingTest or a newly created BoatingTest

    match = BoatingTest.all.find {|test| test.boating_test_name == boating_test_name && test.student == student}
    if match == nil
      BoatingTest.new(student, boating_test_name, "passed", self)
    else
      match.status = "passed"
      match
    end
    # binding.pry



    # if BoatingTest.all.student.map {|student| student.first_name == student && student.boating_test_name == boating_test_name}
    #   student.status = passed
    # else BoatingTest.new(student, boating_test_name, "passed", self)
    # end
  end

  def fail_student(student, boating_test_name)
    match = BoatingTest.all.find {|test| test.boating_test_name == boating_test_name && test.student == student}
    if match == nil
      BoatingTest.new(student, boating_test_name, "failed", self)
    else
      match.status = "failed"
      match
    end 
  end


end
