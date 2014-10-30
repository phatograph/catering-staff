class CreateEventPositions < ActiveRecord::Migration
  def change
    create_table :event_positions do |t|
      t.decimal :allowance
      t.references :event, index: true
      t.references :waiter, index: true
      t.references :waiter_skill, index: true

      t.timestamps
    end
  end
end
