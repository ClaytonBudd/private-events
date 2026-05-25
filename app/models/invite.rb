class Invite < ApplicationRecord
  belongs_to :event_invited, class_name: "Event"
  belongs_to :invited_user, class_name: "User"
end
