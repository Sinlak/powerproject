class ViewProgramController < ApplicationController
  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  before_action :check_lifts
  def index
  end
end
