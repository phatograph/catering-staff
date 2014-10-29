class WaiterSkillsController < ApplicationController
  def new
    @waiter_skill = WaiterSkill.new
  end

  def create
    @waiter_skill = WaiterSkill.new(permitted_params)
    authorize @waiter_skill, :create?

    if @waiter_skill.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    waiter_skill = WaiterSkill.find(params[:id])
    authorize waiter_skill, :destroy?
    waiter_skill.destroy
    redirect_to :back
  end

private

  def permitted_params
    params.require(:waiter_skill).permit(
      :title,
    )
  end
end
