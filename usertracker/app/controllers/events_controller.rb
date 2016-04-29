class EventsController < ApplicationController
  def create
    event = Event.new(event_params)

    if event.valid? && event.user.valid? && event.save
      render json: event
    else
      render json: { :errors => event.errors.full_messages }
    end
  end

  def index
    @events = Event.order(created_at: :desc).limit(50)
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :url)
  end
end
