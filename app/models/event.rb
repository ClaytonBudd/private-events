class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attended_events, foreign_key: :attended_event_id
  has_many :attendees, through: :attended_events, source: :attendee

  scope :past_event, -> { where("DATE < ?", Date.today) }
  scope :upcoming_event, -> { where("DATE > ?", Date.today) }
end
