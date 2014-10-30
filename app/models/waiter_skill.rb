class WaiterSkill < ActiveRecord::Base
  has_and_belongs_to_many :waiters

  def self.waiter_skills_select
    all.map {|x| [x.title, x.id] }
  end

  def acquired?(waiter)
    waiter.waiter_skills.include?(self)
  end
end
