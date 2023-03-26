class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    ActiveRecord::Base.transaction do
      @user = User.new(user_params)
      @user.save!
      @kitchen_garden = @user.build_kitchen_garden
      @kitchen_garden.save!
    end
    redirect_to login_path
    flash[:notice] = 'ユーザーの作成に成功しました'
  rescue ActiveRecord::RecordInvalid => e
    flash.now[:alert] = 'ユーザーの作成に失敗しました'
    render :new
  end
    
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
