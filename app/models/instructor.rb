class Instructor

attr_accessor :test_name, :test_status

@@all = []

	def initialize(instructor_name)
		@name = instructor_name
	@@all << self
	end

	def self.all
		@@all
	end

	def pass_student(student, test_name)
	arr = BoatingTest.all.find { |test| test.test_name == test_name }
		if arr == nil
	BoatingTest.new(student, test_name, "passed", self)
	else
		arr.test_status = "passed"
	end	
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