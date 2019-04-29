class Student

attr_reader :first_name

@@all = []

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def add_boating_test(test_name, status, instructor)
  new = BoatingTest.new(self, test_name, status, instructor)
end

def self.find_student(first_name)
  self.all.select do |student|
    student.first_name == first_name
  end
end

def grade_percentage
  tests = BoatingTest.all.select do |test|
    test.student == self
  end
  passing = tests.select do |test|
    test.status == "passed"
  end
  grade = ((passing.size.to_f / tests.size.to_f) * 100).round(2)
end

def boatingtests
  BoatingTest.all.select do |test|
    test.instructor == self
  end
end

def instuctors
  self.boatingtests.map do |test|
    test.instructor
  end
end

def self.all
  @@all
end

end
