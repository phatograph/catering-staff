class Waiter < User
  has_many :availabilities
  has_and_belongs_to_many :waiter_skills

  def remaining_skills
    current_skills = self.waiter_skills

    # Only display unobtained skills
    WaiterSkill.all.select do |ws|
      current_skills.exclude?(ws)
    end
  end

  def remaining_skills_select
    remaining_skills.map {|x| [x.title, x.id] }
  end
end
