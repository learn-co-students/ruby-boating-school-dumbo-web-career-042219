class Instructor

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def pass_student(student, name)
   result = BoatingTest.all.find do |test|
    test.name == name && test.student == student && test.instructor == self
  end
   if result == nil
     BoatingTest.new(student, name, status = "passed", self)

   else
       result.status = "passed"
       result
   end


end

   # should take in a student instance and test name.
   # If there is a BoatingTest whose name and student match the values passed in,
   # this method should update the status of that BoatingTest to 'passed'.
   # If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'.
   # Either way, it should return the BoatingTest instance.



def fail_student(student, name)
  result = BoatingTest.all.find do |test|
   test.name == name && test.student == student && test.instructor == self
 end
  if result == nil
    BoatingTest.new(student, name, status = "failed", self)

  else
      result.status = "failed"
      result
  end
end
  # should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.




  def self.all
    @@all
  end

end
