class TeacherController < ApplicationController
	def index
		if @session["teacher"]
			render_text "You are logged in as " + @session["teacher"].name + "<br /> <a href='/teacher/logout'>logout</a>"
		else
			redirect_to :action => "login"
		end
	end


	def login
		@session["teacher"]=Teacher.find(1)
		render_text "You are loggable"
	end
	
	def logout
		reset_session
		render_text "Nevermind"
	end
end
