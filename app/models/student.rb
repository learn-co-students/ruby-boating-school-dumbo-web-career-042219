class Student

	attr_accessor :first_name

	@@students =  []

	def initialize(first_name)
		@first_name = first_name
		@@students << self
	end

	#class methods
	def self.all
		@@students
	end

	def self.find_student(first_name)
		@@students.include?(first_name)
		first_name
	end

	#instance methods
	def add_boating_test(test_name, test_status, instructor)
		BoatingTest.new(self, test_name, test_status, instructor)
	end

	def grade_percentage
		tests = BoatingTest.all.select{|test| test.student.first_name == self.first_name}
		total_tests = tests.length.to_f
		passed_tests = tests.select{|test| test.test_status == "passed"}
		passing = passed_tests.length.to_f
		percentage = (passing/total_tests) * 100
	end
end




#Student grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)