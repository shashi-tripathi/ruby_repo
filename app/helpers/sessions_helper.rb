module SessionsHelper
	def sign_in(user)
		session[:user_id] = user.id
		session[:address_id]=user.address.id
		session[:education_id]=user.education.id
		session[:finance_id]=user.finance.id
		session[:personal_detail_id]=user.personal_detail.id
		self.current_user = user
	    Rails.logger.debug("I am in !!!!!!:"+user.address.id.to_s)
	end
	def current_user=(user)
		@current_user = user
	end
	def current_user
		if session[:user_id]
		  	@current_user = User.find(session[:user_id])
		end
	end
	def sign_out
	  Rails.logger.debug('I am not getttng called')
	  session.delete(:user_id)
		self.current_user = nil
		session[:user_id]=nil
		session[:address_id]=nil
		session[:education_id]=nil
		session[:finance_id]=nil
		session[:personal_detail_id]=nil
	end
	
end
