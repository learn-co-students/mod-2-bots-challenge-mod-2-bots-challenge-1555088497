class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :image_url
      t.references :abilities
      t.timestamps
    end
  end
end
