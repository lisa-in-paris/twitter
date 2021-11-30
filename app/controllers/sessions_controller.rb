class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(user_params)
    @user.save
    log_in @user
    redirect_to @user

end
