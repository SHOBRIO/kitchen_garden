class Mypage::ProfilesController < ApplicationController
  def show
    byebug
    @user = current_user
  end

  def update
  end
end
