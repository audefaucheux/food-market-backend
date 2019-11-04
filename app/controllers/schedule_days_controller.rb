class ScheduleDaysController < ApplicationController
  def index
    render json: ScheduleDay.all
  end

  def show
    render json: ScheduleDay.find(params[:id])
  end

  def create
    schedule_day = ScheduleDay.create(schedule_day_params)
    schedule_day.update(user: @current_user) 
    if (schedule_day.valid?)
      render json: {schedule_day: schedule_day}
    else
      render json: { errors: schedule_day.errors.full_messages }
    end
  end

  def update
    schedule_day = ScheduleDay.find(params[:id])
    schedule_day.update(schedule_day_params)
    if (schedule_day.valid?)
      render json: { schedule_day: schedule_day}
    else
      render json: { errors: schedule_day.errors.full_messages }
    end
  end

  private

  def schedule_day_params
    params.require(:schedule_day).permit(:date, :from_time, :to_time, :available, :market_id, :food_truck_id)
  end

end
