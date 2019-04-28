class Student

attr_accessor :first_name

	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_student(student_name)
	self.all.find { |student| student.first_name == student_name }
	end	

	def add_boating_test(test_name, test_status, instructor)
		BoatingTest.new(self, test_name, test_status, instructor)		
	end

	def grade_percentage
	arr = BoatingTest.all.select { |test| test.student = self }
	passedarr = arr.select { |test2| test2.test_status == "passed" }
	gradefloat = (passedarr.length.to_f / arr.length)	
	end
	end