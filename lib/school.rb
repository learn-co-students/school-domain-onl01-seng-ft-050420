# code here!
class School
  attr_reader :roster
  def initialize(name_of_school)
    @name_of_school = name_of_school
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade, students|
      new_stu = students.sort
      @roster[grade] = new_stu
    end
    @roster
  end
  
end