class Mypage::PlantingsController < ApplicationController
  def show
    @planting = current_user.kitchen_garden.plantings.find(params[:id])
    @guides = @planting.vegetable.guides
  end
end
