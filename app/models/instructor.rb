class Instructor

  attr_accessor :name

  @@instructors = []

  def initialize(name)
    @name = name
    @@instructors << self
  end

  def self.all
    @@instructors
  end

  def pass_student(student, test_name)
    passing_student = BoatingTest.all.find {|instance| instance.student == student && instance.test_name == test_name}
    if passing_student
        test.status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    failing_student = BoatingTest.all.find {|instance| instance.student.first_name == student.first_name && instance.test_name == test_name}
    if failing_student
        test.status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
