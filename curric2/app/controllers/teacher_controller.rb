require 'digest/sha1'

class TeacherController < ApplicationController
	layout "teacher_layout"

	def index
		if @session["teacher"]
			@teacher = @session["teacher"];
			@classes = @teacher.subjects;
		#	@depaerments = @teacher.departments;
			render :action => "teacher_index"
		else
			redirect_to :action => "login"
		end
	end


	def login
	end
	
	def auth
		@teach = Teacher.authenticate(@params["name"], @params["password"])
		if @teach
			render :inline => "Seccessfully logged in";
			@session["teacher"]=@teach
		else
			render :inline => "No login :(";
		end
	
		
	end
	
	def logout
		reset_session
		render :inline => "Nevermind"
	end
	
	def hexdigest
		render_text(Digest::SHA1.hexdigest(@params["password"]))
	end
end
