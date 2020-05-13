# code here!
require "pry"
class School
    attr_accessor :roster
    attr_reader :student
    
    def initialize(roster)
        @roster = {}
    end
def add_student(name,grade)
    if roster.has_key?(grade) == true
    roster[grade] << name
    else 
        roster[grade] = []
        roster[grade] << name
    end
def grade(grade)
    roster.values_at(grade).flatten
end
def sort
    roster.each do |grade, students|
        students.sort! {|a,b| a <=> b}
        
    end
end
end
end