
class School
attr_accessor :name, :roster
#attr_reader
  
  def initialize(name)
    @name = name
    @roster = {}
    # @roster = Hash.new  {|h, k| h[k] = []}
  end  
  
  def add_student(name, grade)
    # if @roster.has_key?(grade)
    #   @roster[grade] << name
    # else
    #   @roster[grade] = [name]
    # end
    
    @roster[grade] ||= []   #if @/self.roster[grade] already exists, leave/dont touch
    @roster[grade] << name  #else set @/self.roster[grade] = []
    
    # @roster.has_key?(grade) ? roster[grade] << name : roster[grade] = [name]
  end
  
  def grade(grade)
  @roster[grade]      # self.roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort! 
    
    # @roster.select do |grade, students|
    #     students.sort!
    end
  end
  
end