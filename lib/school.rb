require 'pry'

# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(names, grade)
    if roster[grade] == nil
      roster[grade] = [ ]
      roster[grade] << names
    else
      roster[grade] << names
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    roster.select {|grade, names| names.sort!}
  end
  

end
