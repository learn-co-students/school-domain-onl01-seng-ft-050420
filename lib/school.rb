# require "pry"

class School
  
attr_accessor :name, :roster, :student, :grade



  def initialize(name, roster={})
    @name = name
    @roster = roster
  end 
  
  def add_student (student, grade)
    @student = student
    @grade = grade
    roster[grade] ||= []
    roster[grade] << student
  end 
    
  def grade (grade)
      return @roster[grade]
  end
  
  def sort 
      sort_hash = {}
      roster.each do |k, v| 
      sort_hash[k] = v.sort 
      end 
      sort_hash
  end 
end 