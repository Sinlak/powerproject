class LoginController < ApplicationController

	#before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

	def login
	end

	def attempt_login
	if params[:email].present? && params[:password].present?
	  found_user = SignUp.where(:email => params[:email]).first
	  if found_user
		authorized_user = found_user.authenticate(params[:password])
	  end
	end
	if authorized_user
	  # mark user as logged in

	  session[:user_id] = authorized_user.id
	  session[:email] = authorized_user.email
	  flash[:notice] = "You are now logged in."
	  redirect_to(:controller => "home")
	else
	  flash[:notice] = "Invalid username/password combination."
	  redirect_to(:controller => 'login')
	end
	end

	def logout
		session[:user_id] = nil
		session[:email] = nil
		flash[:notice] = "Logged out"
		redirect_to(:controller => "home")
	end






end
