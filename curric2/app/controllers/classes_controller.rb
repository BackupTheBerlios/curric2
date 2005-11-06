class ClassesController < ApplicationController
	def index
		@departments = Department.find_all
		@subjects = Subject.find_all
	end
	
	def department
		@departments = Department.find_all
		@dep = Department.find(@params["id"])
		@subjects = @dep.subjects.find_all
		@teachers = @dep.teachers
	end
	
	def cover
		@departments = Department.find_all
		@subj = Subject.find(@params["id"])
		@dep = @subj.department
		@subjects = @dep.subjects.find_all
		@units = @subj.units.find_all
		if @subj.firstunit != 0
			@unit = @subj.default
			@documents = @unit.documents.find_all
			render :action => "cover"
		else
			render_text "Error: No default unit for this course."
		end
		
	end
	
	def document
	@doc = Document.find(@params["id"])
		if @doc.isfile == 0
		 	@departments = Department.find_all
			@unit = @doc.unit
			@subj = @unit.subject
			@dep = @subj.department
			@subjects = @dep.subjects.find_all
			@documents = @unit.documents.find_all
			render :action => "document_online"
		else
			send_file ($fullpath + "/public/files/" + @doc.filename)
		end
	end
	
	def unit
		@departments = Department.find_all
		@unit = Unit.find(@params["id"])
		@subj = @unit.subject
		@dep = @subj.department
		@subjects = @dep.subjects.find_all
		@documents = @unit.documents.find_all
	end
end
