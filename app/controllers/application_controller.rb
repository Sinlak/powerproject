class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in"
      redirect_to(:controller => "login")
      return false
    else
      return true
    end
  end

  def confirm_lifts
    @lifter = SignUp.all
    lifter = @lifter.find(session[:user_id])
    if lifter.lifts_set == false
      flash[:notice] = "Please set lifts in order to view program"
      redirect_to(:controller => "set_lifts")
      return false
    else
      return true
    end
  end
end
