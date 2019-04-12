class RobotsController < ApplicationController
  before_action :find_robot, only: [:show]

  def index
    @robots = Robot.all
  end

  def create
    @robot = Robot.new(robot_params)
    if @robot.valid?
      @robot.save
      redirect_to robots_path
    else
      @abilities = Ability.all
      render :new
    end
  end

  def show; end

  def new
    @robot = Robot.new
    @abilities = Ability.all
  end

  private

  def find_robot
    @robot = Robot.find(params[:id])
  end

  def robot_params
    params.require(:robot).permit(:name, :image_url, :ability_id)
  end
end
