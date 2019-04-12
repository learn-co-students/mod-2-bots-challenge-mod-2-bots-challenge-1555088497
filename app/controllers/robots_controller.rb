class RobotsController < ApplicationController
  before_action :find_robot, only: [:show, :update, :destroy]
  before_action :get_abilities, only: [:show, :new, :create]

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
    # {
    #   name: params[:robot][:name],
    #   abilities_id: params[:robot][:abilities_id]
    # })
    if @robot.errors.any?
      render :new
    else
      redirect_to robots_path
    end
  end


  private

  def find_robot
    @robot = Robot.find(params[:id])
  end

  def get_abilities
    @abilities = Ability.all
  end

  def robot_params
    params.require(:robot).permit(:name, :image_url, :abilities_id)
  end
end
