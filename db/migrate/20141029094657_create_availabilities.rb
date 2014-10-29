class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :started_day
      t.time :started_time
      t.integer :ended_day
      t.time :ended_time
      t.references :waiter, index: true

      t.timestamps
    end
  end
end
