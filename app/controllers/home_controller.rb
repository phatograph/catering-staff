class HomeController < ApplicationController
  def index
    @waiters = Waiter.all
    @clients = Client.all
    @admins = Admin.all
    @waiter_skills = WaiterSkill.all
    @events = Event.all
  end
end
