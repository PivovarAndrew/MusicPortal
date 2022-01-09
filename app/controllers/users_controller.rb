class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  after_action :verify_authorized

  def index
    @users = User.all.order("created_at DESC")
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, notice: "User deleted"
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(secure_params) ? (redirect_to users_path, success: "User updated") : (redirect_to users_path, alert: "Unable to update user")
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end
end
