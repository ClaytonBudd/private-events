class RemoveUnnecessaryColumnsFromInvite < ActiveRecord::Migration[8.1]
  def change
    remove_column :invites, :event_invited, :integer
    remove_column :invites, :invited_user, :integer
  end
end
