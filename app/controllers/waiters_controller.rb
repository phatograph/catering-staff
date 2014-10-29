class WaitersController < ApplicationController
  def show
    @waiter = Waiter.find(params[:id])
    @waiter_skill = @waiter.waiter_skills.build
  end

  def add_skill
    waiter_skill = WaiterSkill.find(params[:waiter][:waiter_skills])
    waiter = Waiter.find(params[:id])

    unless waiter.waiter_skills.include? waiter_skill
      waiter.waiter_skills << waiter_skill
    end

    redirect_to waiter
  end

  def remove_skill
    waiter_skill = WaiterSkill.find(params[:waiter_skill_id])
    waiter = Waiter.find(params[:id])
    waiter.waiter_skills.delete(waiter_skill)
    redirect_to waiter
  end
end
