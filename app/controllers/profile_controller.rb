class ProfileController < ApplicationController
  #Remove before production
  skip_before_action :verify_authenticity_token


  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save!
      flash[:success] = "Profile saved"
      redirect_to root_path
    else
      flash[:error] = "Error"
      redirect_to new
    end
  end

  
  def edit
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :username, :profile_image)
  end
end
