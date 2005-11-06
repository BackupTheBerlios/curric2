class Subject < ActiveRecord::Base
	belongs_to :department
	belongs_to :teacher
	has_many :units
	
	def default
		return Unit.find(self.firstunit)
	end
end
