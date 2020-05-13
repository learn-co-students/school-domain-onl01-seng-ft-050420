# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(st_name, grade)
    roster[grade] ||=[]
    roster[grade] << st_name
  end

  def grade(x)
    @roster[x]
  end
  
    def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
    
    
  
 
    
  
end