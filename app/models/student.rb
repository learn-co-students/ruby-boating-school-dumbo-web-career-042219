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

	def boating_tests
	arr = BoatingTest.all.select { | test | test.student == self}
	end

 	def instructors
		# arr = BoatingTest.all.select { | test | test.student == self}
		arr2 = self.boating_tests
		arr2.map { |test2| test2.instructor.name}
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
	gradefloat = (passedarr.length.to_f / arr.length) * 100
	"Your percentage was #{gradefloat} percent"
	end

	end