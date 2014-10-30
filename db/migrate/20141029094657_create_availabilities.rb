class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :day_of_week
      t.time :started_time
      t.time :ended_time
      t.references :waiter, index: true

      t.timestamps
    end
  end
end
