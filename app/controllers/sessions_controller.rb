class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  	layout "user"
	def new
	end

	def create
		user=User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
		 	sign_in user
		 	redirect_to  controller:'home', action: 'index'
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end
	def logout
		sign_out
		redirect_to signin_path
	end

end
