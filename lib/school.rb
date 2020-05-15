# code here!

class School
  attr_accessor :roster
  
  def initialize(name)
    @name =name
    @roster ={}
  end
  
  def add_student(name, grade)
   if @roster.has_key?(grade)
     @roster[grade] << name
   else
     @roster[grade] =[name]
   end
  end
  
  def grade(grade)
    if @roster.has_key?(grade)
      @roster[grade]
    end
  end
      
  def sort
    @roster.each do |x, y|
      y.sort!
    end
  end
      

  
end