class Instructor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def pass_student(student, test_name)
  BoatingTest.all.find do |test|
    if test.test_name == test_name && test.student.first_name == student
      test.status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end
end

def fail_student(student, test_name)
  BoatingTest.all.find do |test|
    if test.test_name == test_name && test.student.first_name == student
      test.status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end
end

def boatingtests
  BoatingTest.all.select do |test|
    test.instructor == self
  end
end

def students
  self.boatingtests.map do |test|
    test.student
  end
end

def self.all
  @@all
end

end
