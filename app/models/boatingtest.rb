class BoatingTest
  attr_reader :student, :instructor
  attr_accessor :test_name, :test_status
  @@all = []

  def initialize(student, test_name, instructor)
    @student = student
    @instructor = instructor
    @test_status = "pending"
    @test_name = test_name
    @@all << self
  end

  def self.all
    @@all
  end
end
