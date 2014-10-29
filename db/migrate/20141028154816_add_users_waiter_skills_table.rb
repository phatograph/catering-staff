class AddUsersWaiterSkillsTable < ActiveRecord::Migration
  def change
    create_table :users_waiter_skills, id: false do |t|
      t.belongs_to :waiter
      t.belongs_to :waiter_skill
    end

    add_index :users_waiter_skills, :waiter_id
    add_index :users_waiter_skills, :waiter_skill_id
  end
end
