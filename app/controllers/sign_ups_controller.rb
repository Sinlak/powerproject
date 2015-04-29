class SignUpsController < ApplicationController


  def index
  end

  def new
    @user = SignUp.new
  end

  def create
    @user = SignUp.new(sign_ups_params)

    if @user.save
      redirect_to(:action => 'new')
    end

  end

  private
    def sign_ups_params
      params.require(:sign_ups).permit(:first_name, :last_name, :email, :password)
    end
end
