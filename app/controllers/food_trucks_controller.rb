class FoodTrucksController < ApplicationController

  def index
    render json: FoodTruck.all
  end

  def show
    render json: FoodTruck.find(params[:id])
  end

  def create
    food_truck = FoodTruck.create(name: params[:food_truck][:name], description: params[:food_truck][:description], profile_picture: params[:food_truck][:profile_picture], twitter_account: params[:food_truck][:twitter_account])
    food_truck.update(user: @current_user)
    params[:food_truck][:cuisines].each do |cuisine|
      FoodTruckCuisine.create(cuisine_id: cuisine.to_i, food_truck_id: food_truck.id)
    end

    if (food_truck.valid?)
      render json: {food_truck: FoodTruckSerializer.new(food_truck)}
    else
      render json: { errors: food_truck.errors.full_messages }
    end
  end

  def update
    food_truck = FoodTruck.find(params[:id])
    food_truck.update(food_truck_params)
    if (food_truck.valid?)
      render json: {food_truck: FoodTruckSerializer.new(food_truck)}
    else
      render json: { errors: food_truck.errors.full_messages }
    end
  end

  private

  def food_truck_params
    params.require(:food_truck).permit(:name, :description, :profile_picture, :twitter_account, :archived, :cuisines)
  end

end
