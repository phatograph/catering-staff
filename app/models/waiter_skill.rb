class WaiterSkill < ActiveRecord::Base
  has_and_belongs_to_many :waiters

  def self.waiter_skills_select
    all.map {|x| [x.title, x.id] }
  end
end
