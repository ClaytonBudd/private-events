class AddUserRefToEvents < ActiveRecord::Migration[8.1]
  def change
    add_reference :events, :creator
  end
end
