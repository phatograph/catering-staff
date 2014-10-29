class AddClientEventsRelationship < ActiveRecord::Migration
  def change
    add_column :events, :client_id, :integer
    add_index :events, :client_id
  end
end
