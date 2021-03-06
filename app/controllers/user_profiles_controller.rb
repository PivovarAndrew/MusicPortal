class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: %i[ show ]
  before_action :get_user_profile, only: [:edit, :update]
  skip_before_action :set_user_profile, only: [:update_avatar]

  # PATCH/PUT /user_profiles/1 or /user_profiles/1.json
  def update
    respond_to do |format|
      if @user_profile.update(user_profile_params)
        format.html { redirect_to @user_profile, notice: "User profile was successfully updated." }
        format.json { render :show, status: :ok, location: @user_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_profile
    @user_profile = UserProfile.all.find(params[:id])
  end

  def get_user_profile
    @user_profile = current_user.user_profile
  end

  # Only allow a list of trusted parameters through.
  def user_profile_params
    params.require(:user_profile).permit(:address, :avatar, :date_of_birthday, :name, :nickname, :surname)
  end
end
