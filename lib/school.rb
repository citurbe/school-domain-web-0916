# code here!
class School

attr_reader :roster, :school_name

def initialize (school_name)
	@school_name = school_name
	@roster = {}
end

def add_student(student_name, grade)
	if @roster.keys.include?(grade)
		@roster[grade] << student_name 
	else
		@roster[grade] = [student_name]
	end
end


def grade (grade_number)
	@roster[grade_number]
end

def sort
	@roster.each {|grade, student_array| @roster[grade] = student_array.sort}
	@roster
end



end