class AbilitiesController < ApplicationController
  before_action :find_ability, only: [:show]

  def index
    @abilities = Ability.all
  end

  def show; end

  private

  def find_ability
    @ability = Ability.find(params[:id])
  end
end
