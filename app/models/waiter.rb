class Waiter < User
  has_and_belongs_to_many :waiter_skills

  def remaining_skills
    current_skills = self.waiter_skills

    # Only display unobtained skills
    WaiterSkill.all.select do |ws|
      current_skills.exclude? ws
    end
  end
end
