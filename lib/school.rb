require "pry"
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
  @name = name
  @grade = grade
  
  if @roster[grade]
   @roster[grade] << @name
  else
    @roster[grade] = []
    @roster[grade]<< name
  end
  end

def grade(level)
    roster.detect do |x, y| 
      if x == level
        return y 
      end 
    end 
  end 
  
  
  def sort
    sorted_list = {}
    roster.each do |their_name, grade|
      sorted_list[their_name] = grade.sort
    end
    sorted_list
  end
      
end


