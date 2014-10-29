class WaitersController < ApplicationController
  def show
    @waiter = Waiter.find(params[:id])
    @waiter_skill = @waiter.waiter_skills.build
    @availability = @waiter.availabilities.build
  end

  def add_skill
    waiter_skill = WaiterSkill.find(add_skill_params[:waiter_skills])
    waiter = Waiter.find(params[:id])

    unless waiter.waiter_skills.include? waiter_skill
      waiter.waiter_skills << waiter_skill
    end

    redirect_to waiter
  end

  def remove_skill
    waiter_skill = WaiterSkill.find(remove_skill_params)
    waiter = Waiter.find(params[:id])
    waiter.waiter_skills.delete(waiter_skill)
    redirect_to waiter
  end

  def add_availability
  end

private

  def add_skill_params
    params.require(:waiter).permit(:waiter_skills)
  end

  def remove_skill_params
    params.require(:waiter_skill_id)
  end
end
