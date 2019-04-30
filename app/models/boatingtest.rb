class BoatingTest
	attr_accessor :test_name, :test_status, :student, :instructor
	@@tests = []

	def initialize(student, test_name, test_status, instructor)
		@student, = student, 
		@test_name = test_name,
		@test_status = test_status,
		@instructor = instructor
		@@tests << self
	end

	def self.all
		@@tests
	end
end