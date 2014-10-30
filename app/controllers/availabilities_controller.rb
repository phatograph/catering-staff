class AvailabilitiesController < ApplicationController
  def create
    waiter = Waiter.find(params[:waiter_id])
    availability = waiter.availabilities.new(permitted_params)
    availability.save
    redirect_to :back
  end

  def destroy
    availability = Availability.find(params[:id])
    availability.destroy
    redirect_to :back
  end

private

  def permitted_params
    params.require(:availability).permit(
      :day_of_week,
      :started_time,
      :ended_time
    )
  end
end
