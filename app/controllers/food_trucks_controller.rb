class FoodTrucksController < ApplicationController

  def index
    render json: FoodTruck.all
  end

  def show
    render json: FoodTruck.find(params[:id])
  end

  def create
    food_truck = FoodTruck.create(food_truck_params)
    food_truck.update(user: @current_user) 
    if (food_truck.valid?)
      render json: {food_truck: food_truck}
    else
      render json: { errors: food_truck.errors.full_messages }
    end
  end

  def update
    food_truck = FoodTruck.find(params[:id])
    food_truck.update(food_truck_params)
    render json: { food_truck: food_truck}
  end

  private

  def food_truck_params
    params.require(:food_truck).permit(:name, :description, :profile_picture, :twitter_account)
  end

end
