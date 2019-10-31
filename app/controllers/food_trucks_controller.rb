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
      render json: food_truck
    else
      render json: { errors: food_truck.errors.full_messages }
    end
  end

  def destroy
    food_truck = FoodTruck.find(params[:id])
    if food_truck.destroy
      render json: { message: "Product destroyed successfully" }
    else
      render json: { error: "Something went wrong"}
    end

  end

  private

  def food_truck_params
    params.require(:food_truck).permit(:name )
  end

end
