class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @grade = grade
    @student_name = student_name
    if @roster.include?(grade) == false
      @roster[@grade] =[]
    end
    @roster[@grade] << student_name
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
