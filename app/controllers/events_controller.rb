class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:done] = "Even created"
      redirect_to events_path
    else
      flash[:error] = @event.errors.full_messages.join(',')
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:done] = "Event updated"
      redirect_to events_path
    else
      flash[:error] = @event.errors.full_messages.join(',')
      redirect_to edit_event_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:done] = "event deleted"
    else
      flash[:error] = "Could not delete event"
    end
    redirect_to events_path
  end
end
