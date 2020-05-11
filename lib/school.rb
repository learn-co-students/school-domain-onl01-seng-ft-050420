class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |name, grade|
      @roster[name].sort!
    end
  end

end
