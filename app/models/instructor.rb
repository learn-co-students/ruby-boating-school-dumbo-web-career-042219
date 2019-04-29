class Instructor

  @@instructors = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@instructors
  end

  def pass_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.name == test_name}

    unless test
      test.status = "passed"
      test
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.name == test_name}

    unless test
      test.status = "failed"
      test
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
