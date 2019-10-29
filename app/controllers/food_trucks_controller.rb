class FoodTrucksController < ApplicationController

  def index
    render json: FoodTruck.all
  end

end
