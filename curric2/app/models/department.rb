class Department < ActiveRecord::Base
	has_many :subjects
	
	def teachers
		@teachers = []
		self.subjects.each do |subject|
			@teachers = @teachers + [subject.teacher]
		end 
		@teachers = @teachers.uniq
		return @teachers
	end
			
end
