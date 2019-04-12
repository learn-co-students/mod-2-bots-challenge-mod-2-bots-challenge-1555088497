class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :description
      t.references :robots
      t.timestamps
    end
  end
end
