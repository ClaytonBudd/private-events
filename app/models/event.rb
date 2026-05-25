class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attended_events, foreign_key: :attended_event_id
  has_many :attendees, through: :attended_events, source: :attendee
  has_many :invited_users, through: :invites, source: :invited_user

  scope :past_event, -> { where("DATE < ?", Date.today) }
  scope :upcoming_event, -> { where("DATE > ?", Date.today) }
end
