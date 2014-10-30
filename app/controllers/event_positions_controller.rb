class EventPositionsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    event_position = event.event_positions.new(permitted_params)
    event_position.save
    redirect_to :back
  end

  def edit
    @event_position = EventPosition.find(params[:id])
  end

  def update
    @event_position = EventPosition.find(params[:id])
    @event_position.update(permitted_params)

    if @event_position.save
      redirect_to @event_position.event
    else
      render 'edit'
    end
  end

  def destroy
    event_position = EventPosition.find(params[:id])
    event_position.destroy
    redirect_to :back
  end

private

  def permitted_params
    params.require(:event_position).permit(
      :waiter_skill_id,
      :allowance,
      :waiter_id,
    )
  end
end
