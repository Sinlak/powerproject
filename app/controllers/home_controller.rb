class HomeController < ApplicationController

  def index
  end
  def logout1
		session[:user_id] = nil
		session[:email] = nil
		flash[:notice] = "Logged out"
	  redirect_to(:action => '../home')
	end
end
