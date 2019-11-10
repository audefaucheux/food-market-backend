class ScheduleRecurrencesController < ApplicationController
  def index
    render json: ScheduleRecurrence.all
  end

  def show
    render json: ScheduleRecurrence.find(params[:id])
  end

  def create
    schedule_recurrence = ScheduleRecurrence.create(schedule_recurrence_params)
    if (schedule_recurrence.valid?)
      render json: { schedule_recurrence: ScheduleRecurrenceSerializer.new(schedule_recurrence)}
    else
      render json: { errors: schedule_recurrence.errors.full_messages }
    end
  end

  def update
    schedule_recurrence = ScheduleRecurrence.find(params[:id])
    schedule_recurrence.update(schedule_recurrence_params)
    if (schedule_recurrence.valid?)
      render json: { schedule_recurrence: ScheduleRecurrenceSerializer.new(schedule_recurrence)}
    else
      render json: { errors: schedule_recurrence.errors.full_messages }
    end
  end

  def destroy
    schedule_recurrence = ScheduleRecurrence.find(params[:id])
    schedule_recurrence.destroy
    # render json: { message: "It worked !"}
  end

  private

  def schedule_recurrence_params
    params.require(:schedule_recurrence).permit(:day_num, :from_time, :to_time, :available, :market_id, :food_truck_id)
  end

end
