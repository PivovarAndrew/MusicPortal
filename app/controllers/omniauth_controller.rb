class OmniauthController < ApplicationController
  def github
    @user = User.create_from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect_user @user
      set_flash_message! :notice, :success, kind: "Github" if is_navigational_format?
    else
      flash[:error] = "An error occured while signing in via Github. Please, register or try again later."
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.create_from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect_user @user
      set_flash_message! :notice, :success, kind: "Google" if is_navigational_format?
    else
      flash[:error] = "An error occured while signing in via Google. Please, register or try again later."
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
