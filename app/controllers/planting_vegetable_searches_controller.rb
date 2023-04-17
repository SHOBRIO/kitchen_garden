class PlantingVegetableSearchesController < ApplicationController
  def index
    @vegetables = Vegetable.all
  end
  
  def show
    @guides = Guide.where(vegetable_id: params[:vegetable_id])
    @vegetable = Vegetable.find(params[:vegetable_id])
    @users = User.joins(:kitchen_garden => :plantings).where(:plantings => {:vegetable_id => @vegetable.id}).distinct.limit(3)
  end

  def new
    @guides = Guide.where(vegetable_id: params[:vegetable_id])
  end

  def create
    @planting = Planting.new(vegetable_id: params[:vegetable_id], kitchen_garden_id: current_user.kitchen_garden.id)
    @planting.save
    redirect_to mypage_kitchen_garden_path(current_user.kitchen_garden), notice: "野菜を追加しました"
  end
end
