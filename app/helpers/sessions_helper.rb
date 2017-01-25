module SessionsHelper

	# Logs in the given user.
	def log_in(user)
		# code using the session method is automatically encrypted
		# only to temporary sessions initiated with the session method, 
			# and is not the case for persistent sessions created using the cookies method.
		session[:user_id] = user.id
	end

	# Returns the current logged-in user (if any).
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# Returns true if the user is logged in, false otherwise
	def logged_in?
		!current_user.nil?
	end

	# Logs out the current user.
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

end
