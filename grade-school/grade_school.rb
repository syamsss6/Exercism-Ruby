module BookKeeping
  VERSION = 3
end

class School
  attr_accessor :grade
  def initialize
    @stud_hash = {} 
  end
  def students(grade)
    @stud_hash[grade] = [ ] if @stud_hash[grade].nil?
    @stud_hash[grade].sort!
  end
  def add(student, grade)
    @stud_hash[grade] = [ ] if @stud_hash[grade].nil?
    @stud_hash[grade] << student 
  end
  def students_by_grade
    @stud_hash.sort.map { |grade,students| {grade: grade, students: students.sort}} 
  end
end
