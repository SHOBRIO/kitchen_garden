class Mypage::ProfilesController < ApplicationController
  def show
    @user = current_user
    @profile = @user.profile
  end

  def update
    @user = current_user
    @profile = @user.profile
    if @profile.update(profile_params)
      redirect_to mypage_profile_path, notice: 'プロフィールを更新しました'
    else
      render :show
    end
  end

  def profile_params
    params.require(:profile).permit(:name, :avatar)
  end
end
