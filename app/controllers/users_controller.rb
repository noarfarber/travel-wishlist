class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to destinations_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
