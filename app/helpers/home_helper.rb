module HomeHelper
	def current_user
		if session[:user_id]
			@user= User.find(session[:user_id])
		else
			return false;
		end
	end
end
