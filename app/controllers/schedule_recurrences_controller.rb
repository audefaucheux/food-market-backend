class ScheduleRecurrencesController < ApplicationController
  def index
    render json: ScheduleRecurrence.all
  end

  def show
    render json: ScheduleRecurrence.find(params[:id])
  end

  def create
    schedule_recurrence = ScheduleRecurrence.create(schedule_recurrence_params)
    schedule_recurrence.update(user: @current_user) 
    if (schedule_recurrence.valid?)
      render json: {schedule_recurrence: schedule_recurrence}
    else
      render json: { errors: schedule_recurrence.errors.full_messages }
    end
  end

  def update
    schedule_recurrence = ScheduleRecurrence.find(params[:id])
    schedule_recurrence.update(schedule_recurrence_params)
    if (schedule_recurrence.valid?)
      render json: { schedule_recurrence: schedule_recurrence}
    else
      render json: { errors: schedule_recurrence.errors.full_messages }
    end
  end

  private

  def schedule_recurrence_params
    params.require(:schedule_recurrence).permit(:date, :from_time, :to_time, :available, :market_id, :food_truck_id)
  end

end
