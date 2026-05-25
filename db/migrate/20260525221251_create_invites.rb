class CreateInvites < ActiveRecord::Migration[8.1]
  def change
    create_table :invites do |t|
      t.integer :event_invited
      t.integer :invited_user

      t.timestamps
    end
  end
end
