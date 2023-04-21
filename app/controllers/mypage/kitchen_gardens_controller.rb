class Mypage::KitchenGardensController < ApplicationController
  def show
    @kitchen_garden = KitchenGarden.find_by(user_id: current_user.id)
    @plantings = @kitchen_garden.plantings.includes(:vegetable)

    start_date = Date.parse(params[:start_date] || Date.today.to_s)
    @filtered_sowing = @plantings.select do |planting|
      sowing_month = planting.vegetable.guides[0].sowing_month
      sowing_month[/\d+/].to_i == start_date.month
    end.uniq(&:vegetable_id)

    @filtered_planting = @plantings.select do |planting|
      planting_month = planting.vegetable.guides[0].planting_month
      planting_month[/\d+/].to_i == start_date.month
    end.uniq(&:vegetable_id)

    @filtered_harvesting = @plantings.select do |planting|
      harvesting_month = planting.vegetable.guides[0].harvesting_month
      harvesting_month[/\d+/].to_i == start_date.month
    end.uniq(&:vegetable_id)

    @diaries = @kitchen_garden.diaries
  end
end