class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]

  def show
    @user_more_info = UserMoreInfo.new
  end

  def edit; end

  def update
    user = User.update(username: user_params[:username], birth_date: user_params[:birth_date], role_id: user_params[:role_id], email: user_params[:email], avatar: user_params[:avatar])
    if user
      redirect_to user_path(current_user)
    else
      set_user
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :role_id,:birth_date, :email, :avatar)
  end
end
