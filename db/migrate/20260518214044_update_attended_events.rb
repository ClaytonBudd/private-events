class UpdateAttendedEvents < ActiveRecord::Migration[8.1]
  def change
    add_reference :attended_events, :attendee
    add_reference :attended_events, :attended_event
  end
end
