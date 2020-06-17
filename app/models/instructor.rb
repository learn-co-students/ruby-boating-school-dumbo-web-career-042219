class Instructor

	attr_accessor :name

	@@instructors = []

	def initialize(name)
		@name = name
		@@instructors << self
	end

	def pass_student(student, test_name)
		pass = BoatingTest.all.find do |instance| 
			instance.student == student && instance.test_name == test_name
			if pass
				test.test_status = "passed"
			else
				BoatingTest.new(student, test_name, "passed", self)
			end
		end
	end

	def fail_student(student, test_name)
		failing = BoatingTest.all.find do |instance|
			instance.student == student &&  instance.test_name == test_name
			if failing
				test.test_status = "failed"
			else
				BoatingTest.new(student, test_name, "failed", self)
			end
		end
	end
end


