class AddReferencesToInvites < ActiveRecord::Migration[8.1]
  def change
    add_reference :invites, :invited_user
    add_reference :invites, :event_invited
  end
end
