class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
