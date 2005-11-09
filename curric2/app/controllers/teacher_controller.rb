require 'digest/sha1'

class TeacherController < ApplicationController
	layout "teacher_layout"

	def index
		if @session["teacher"]
			render_text "You are logged in as " + @session["teacher"].name + "<br /> <a href='/teacher/logout'>logout</a>"
		else
			redirect_to :action => "login"
		end
	end


	def login
	end
	
	def auth
		@teach = Teacher.authenticate(@params["name"], @params["password"])
		if @teach
			render_text "Seccessfully logged in";
			@session["teacher"]=@teach
		else
			render_text "No login :(";
		end
	
		
	end
	
	def logout
		reset_session
		render_text "Nevermind"
	end
	
	def hexdigest
		render_text(Digest::SHA1.hexdigest(@params["password"]))
	end
end
