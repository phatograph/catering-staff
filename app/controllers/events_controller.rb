class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @event_position = @event.event_positions.build
  end

  def new
    @event = Event.new
    authorize @event, :create?
  end

  def create
    @event = Event.new(permitted_params)
    authorize @event, :create?

    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event, :create?
  end

  def update
    @event = Event.find(params[:id])
    authorize @event, :create?
    @event.update(permitted_params)

    if @event.save
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    event = Event.find(params[:id])
    authorize event, :destroy?
    event.destroy
    redirect_to :back
  end

private

  def permitted_params
    params.require(:event).permit(
      :title,
      :client_id
    )
  end
end
