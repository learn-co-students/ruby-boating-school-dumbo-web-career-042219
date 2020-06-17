class BoatingTest

  attr_accessor :student, :test_name, :status, :instructor

  @@boating_tests = []

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@boating_tests << self
  end

  def self.all
    @@boating_tests
  end


end
