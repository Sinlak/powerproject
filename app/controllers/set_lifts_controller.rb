class SetLiftsController < ApplicationController

before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index

  end

  def new
    @lifts = SetLifts.new
  end

  def create
    @lifts = SetLifts.new(sign_ups_params)

    if @lifts.save

      @usr = SignUp.all
      usr = @usr.find(session[:user_id])
      usr.lifts_set = true
      usr.save!

      flash[:notice] = "Lifts set"

      redirect_to(:controller => 'home')


    else
      flash[:notice] = "didnt work"
      redirect_to(:controller => 'home')
    end



  end

  private
    def sign_ups_params
      params.require(:set_lifts).permit(:Squat, :Bench, :Dead, :OHP, :sign_up_id, :program)
    end
end
