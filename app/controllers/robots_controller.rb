class RobotsController < ApplicationController

  def index
    @robots = Robot.all
    if params[:search_term]
      @robots = Robot.where("name LIKE ?", "%#{params[:search_term]}%")
    end
  end

  def new 
    @robot = Robot.new()
    @abilities = Ability.all()
  end 

  def create
    @robot = Robot.create(robot_params)
    # if @robot.errors.any?
    #   @abilities = Ability.all 
    #   render :new
    # else 
      redirect_to robot_path(@robot)
    # end
  end 

  private

  def robot_params 
    params.require(:robot).permit(:name, :image_url, :abilities_id)
  end 
end
