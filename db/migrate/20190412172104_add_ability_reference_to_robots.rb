class AddAbilityReferenceToRobots < ActiveRecord::Migration[5.1]
  def change
    add_reference :robots, :abilities 
  end
end
