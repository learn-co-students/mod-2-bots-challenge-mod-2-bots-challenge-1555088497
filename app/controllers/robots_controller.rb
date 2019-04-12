class RobotsController < ApplicationController

  def index
    if params[:q]
      @robots = Robot.where("name LIKE ?", "%#{params[:q]}%")
    else
      @robots = Robot.all
    end

  end

  def show

    @robot = Robot.find(params[:id])
    @ablility = Ability.find(@robot.ability_id)
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(robot_params)
    redirect_to robots_path
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :image_url, :ability_id)
  end
end
