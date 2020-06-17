class BoatingTest

  attr_accessor :name, :status
  attr_reader :student, :instructor

@@all = []
@@count = 0

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @instructor = instructor
    @status = status
    @@count += 1
    @@all << self
  end

  def self.all
    @@all
  end

end
