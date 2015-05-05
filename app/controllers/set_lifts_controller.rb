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

      flash[:notice] = "Lifts set"
      redirect_to(:action => '../home')


    else
      flash[:notice] = "didnt work"
      redirect_to(:action => '../home')
    end



  end

  private
    def sign_ups_params
      params.require(:set_lifts).permit(:Squat, :Bench, :Dead, :OHP, :sign_up_id)
    end



end
