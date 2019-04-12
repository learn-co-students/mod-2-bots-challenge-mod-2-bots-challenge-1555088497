class RobotsController < ApplicationController
  before_action :set_robot, only: [:show]
  before_action :all_abilities, only: [:new, :create]


  def index
    if params[:search_term]
      @robots = Robot.where("name LIKE ?", "%#{params[:search_term]}%")
    else
      @robots = Robot.all
    end
  end

  def show
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(robot_params)
    
    if @robot.errors.any?
      render :new
    else
      redirect_to robot_path(@robot)
    end
  end


  private

  def set_robot
    @robot = Robot.find(params[:id])
  end

  def all_abilities
    @abilities = Ability.all
  end

  def robot_params
    params.require(:robot).permit(:name, :image_url, :ability_id)
  end
end
