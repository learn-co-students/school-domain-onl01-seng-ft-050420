require 'pry'
class School
  def initialize(school)
    @school = school 
    @roster = Hash.new
  end 
  
  def roster
     @roster
  end 
    
  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else 
      @roster[grade] = []
      @roster[grade].push(student)
    end 
  end 

  def grade(grade)
    @roster[grade]
  end 

  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end
binding.pry
end 