class UsersController < ApplicationController

  def new
  end
  def create
    @user = User.new(user_params)
    if user.save
      session[:usar_id] = user.id
      redirect_to root_path
    else
      render :new
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
