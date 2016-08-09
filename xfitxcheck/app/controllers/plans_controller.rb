class PlansController < ApplicationController
  def create
    @gym = Gym.find(params[:gym_id])
    @plan = @gym.plans.create(params[:plan])
    redirect_to gym_path(@gym)
  end
end
