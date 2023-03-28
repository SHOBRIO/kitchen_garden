class Mypage::KitchenGardensController < ApplicationController
  def show
    @kitchen_garden = current_user.kitchen_garden
  end
end
