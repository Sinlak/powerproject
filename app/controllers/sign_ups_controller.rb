class SignUpsController < ApplicationController


  def index
  end

  def new
    @user = SignUp.new
  end

  def create
    @user = SignUp.new(sign_ups_params)

    if @user.save!

      flash[:notice] = "Thank you " + @user.first_name + ", account created successfully."
      redirect_to(:action => '../home')

    else
      flash[:error] = "something failed"
      redirect_to :back
    end

  rescue
    flash[:error] = "Failed to create user, email is taken or passwords do not match"
    redirect_to :back
  end







  private
    def sign_ups_params
      params.require(:sign_ups).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
