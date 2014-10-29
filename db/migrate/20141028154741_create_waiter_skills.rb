class CreateWaiterSkills < ActiveRecord::Migration
  def change
    create_table :waiter_skills do |t|
      t.string :title

      t.timestamps
    end
  end
end
