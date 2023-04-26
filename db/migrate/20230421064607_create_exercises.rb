class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.text :name
      t.integer :reps
      t.integer :sets
      t.text :image
      t.integer :gymplan_id

      t.timestamps
    end
  end
end
