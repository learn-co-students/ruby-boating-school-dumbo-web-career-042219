class BoatingTest

  @@all = []

  attr_accessor :student, :boating_test_name, :status, :instructor

  def initialize(student, boating_test_name, status, instructor)
    @student = student
    @boating_test_name = boating_test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end




end
