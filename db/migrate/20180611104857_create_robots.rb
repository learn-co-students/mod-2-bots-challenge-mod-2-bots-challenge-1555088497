class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :image_url
      t.references :ability, foreign_key: true

      t.timestamps
    end
  end
end
