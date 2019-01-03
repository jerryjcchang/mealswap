class AddPortionToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :portion, :integer
  end
end
