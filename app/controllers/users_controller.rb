class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  after_action :verify_authorized

  def index
    @users = User.all.order("created_at DESC")
    authorize User
  end

  def show
    @user = User.find(params[:id])
    @albums = @user.albums
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

  def activity
    @user = User.find(params[:user_id])
    authorize @user
    @user_likes_create_groupped_by_monthes = @user.likes.group_by_month(:created_at, format: "%b %Y").count
    @user_dislikes_create_groupped_by_monthes = @user.dislikes.group_by_month(:created_at, format: "%b %Y").count
    @user_comments_create_groupped_by_monthes = @user.comments.group_by_month(:created_at, format: "%b %Y").count
    @user_likes_create_groupped_by_weeks = @user.likes.group_by_week(:created_at).count
    @user_dislikes_create_groupped_by_weeks = @user.dislikes.group_by_week(:created_at).count
    @user_comments_create_groupped_by_weeks = @user.comments.group_by_week(:created_at).count
    @user_likes_create_groupped_by_day_of_weeks = @user.likes.group_by_day_of_week(:created_at, format: "%a").count
    @user_dislikes_create_groupped_by_day_of_weeks = @user.dislikes.group_by_day_of_week(:created_at, format: "%a").count
    @user_comments_create_groupped_by_day_of_weeks = @user.comments.group_by_day_of_week(:created_at, format: "%a").count
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end
end
