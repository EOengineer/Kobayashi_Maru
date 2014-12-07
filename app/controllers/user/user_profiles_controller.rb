class User::UserProfilesController < ApplicationController

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      redirect_to user_user_profile_path(@user_profile)
    else
      render :new
    end
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def edit
    @user_profile = UserProfile.find(params[:id])
  end

  def update
    @user_profile = UserProfile.find(params[:id])
    @user_profile.user = current_user
    if @user_profile.update
      redirect_to user_user_profile_path(@user_profile)
    else
      render :edit
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(:user_id, :company, :about, :mission, :city, :state, :contact)
  end
end
