class AttendedEventsController < ApplicationController
  def index
    @attended_event = AttendedEvent.all
  end

  def new
    @attended_event = AttendedEvent.new
  end

  def create
    @attended_event = AttendedEvent.new(attended_event_params)
    if @attended_event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

private
  def attended_event_params
    params.expect(attended_events: [ :attended_event_id, :attendee_id ])
  end
end
