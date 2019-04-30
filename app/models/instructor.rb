class Instructor

attr_accessor :test_name, :test_status, :name

@@all = []

	def initialize(instructor_name)
		@name = instructor_name
	@@all << self
	end

	def self.all
		@@all
	end

	def pass_student(student, test_name)
	arr = BoatingTest.all.find { |test| test.student == student && test.test_name == test_name }
		if arr == nil
	BoatingTest.new(student, test_name, "passed", self)
	else
		arr.test_status = "passed"
	end	
end


	def boating_tests 
		arr = BoatingTest.all.select { | test | test.instructor == self}
	end

 	def students
		# arr = BoatingTest.all.select { | test | test.instructor == self}
		arr2 = self.boating_tests
		arr2.map { |test2| test2.student.first_name}
	end

	def fail_student(student, test_name)
	arr = 	BoatingTest.all.find { |test| test.test_name == test_name }
		if arr == nil
	BoatingTest.new(student, test_name, "passed", self)
	else
		arr.test_status = "failed"
	end	
end

end