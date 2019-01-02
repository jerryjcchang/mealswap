class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories
      t.string :ingredients
      t.string :description
      t.string :prep_time
      t.integer :chef_id

      t.timestamps
    end
  end
end
