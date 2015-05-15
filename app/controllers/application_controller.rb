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

  def check_lifts
    @user_test = SetLifts.all
    unless !@user_test.where(id: session[:user_id]).nil?
      flash[:notice] = "Set your lifts"
      redirect_to(:controller => "set_lifts")
      return false
    else
      return true
  end
end

end
