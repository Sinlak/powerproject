class SetLiftsController < ApplicationController

  def index
  end

  def new
    @lifts = SetLifts.new
  end

  def create
    @lifts = SetLifts.new(sign_ups_params)

    if @lifts.save

      flash[:notice] = "Thank you " + @user.first_name + ", lifts set successfully."
      redirect_to(:action => '../home')

    end


  end

  private
    def sign_ups_params
      params.require(:set_lifts).permit(:Squat, :Bench, :Dead, :OHP)
    end

end
