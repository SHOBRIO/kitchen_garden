class Mypage::PlantingsController < ApplicationController
  def show
    @planting = current_user.kitchen_garden.plantings.find(params[:id])
    @guides = @planting.vegetable.guides
  end

  def update
    @planting = current_user.kitchen_garden.plantings.find(params[:id])
    @planting.update(planting_params)
    redirect_to mypage_planting_path(@planting)
  end

  def destroy
    @planting = current_user.kitchen_garden.plantings.find(params[:id])
    @planting.destroy
    redirect_to mypage_kitchen_garden_path(current_user.kitchen_garden)
  end
  
  private
    def planting_params
      params.require(:planting).permit(:publish, :sowing_date, :germination_date, :seedling_date, :image)
    end
end
