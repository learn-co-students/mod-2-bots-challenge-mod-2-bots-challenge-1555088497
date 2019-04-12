class AddAbilitiesToRobots < ActiveRecord::Migration[5.1]
  def change
    add_reference(:robots, :ability, foreign_key: true)
  end
end
