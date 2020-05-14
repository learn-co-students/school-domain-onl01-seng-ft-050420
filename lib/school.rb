# code here!
require 'pry'
class School

   
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def roster 
   @roster
  end
 
    def add_student(name, grade)
    @name =name
    @grade=grade
    
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade]= []
      @roster[grade] << name
    end
  end
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
      @roster.each do |grades, students|
      @roster[grades]= students.sort
    end
  end
end