
class School
  
  attr_reader :name, :roster, :grade
  
  
  
  def initialize (name)
    @name = name
    @roster = Hash.new { |hash, key| hash[key] = [] }
    
    
  end
  
  def add_student (name, grade)
  
    #roster[grade]=[]
    if @roster.has_key?(grade)
      @roster[grade] <<  name 
    else
      #@roster[grade] 
      
      @roster [grade] << name
    end
    
    
  end
  
  def grade (grade)
    @roster.values_at(grade).flatten
  end
  
  def sort
    new_roster = {}
    @roster.collect do | grade, names |
      new_roster[grade] = names.sort
    end
    new_roster
      
  end
  
  
end