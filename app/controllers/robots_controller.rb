class RobotsController < ApplicationController

  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(robot_params)

    if @robot.errors.any?
      @abilities = Ability.all
      render :new
    else
      redirect_to robots_path
    end
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :ability_id)
  end
end
