class ApplicationController < ActionController::Base

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @usar.save
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:email, :password_confirmation)
  end
end


