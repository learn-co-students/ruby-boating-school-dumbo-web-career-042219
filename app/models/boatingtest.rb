class BoatingTest
  attr_accessor :test_name, :test_status, :instructor
  attr_reader :student
  @@boating_tests = []
  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    self.class.all << self
  end

  def self.all
    @@boating_tests
  end
end
