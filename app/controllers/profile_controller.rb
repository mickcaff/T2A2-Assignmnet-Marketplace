class ProfileController < ApplicationController
  #Remove before production
  skip_before_action :verify_authenticity_token

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save!
      flash[:success] = "Profile saved"
      redirect_to '/services'
    else
      flash[:error] = "Error"
      redirect_to '/services'
    end
  end

  
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    begin
      @profile = Profile.find(params[:id])
      @profile.update!(profile_params)
      redirect_to profile_path(@profile)
    rescue
      flash.now[:alert] = @profile.errors.full_messages.join('<br>')
      render 'edit'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :username, :avatar_image)
  end
end
