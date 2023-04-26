class CreateGymplans < ActiveRecord::Migration[5.2]
  def change
    create_table :gymplans do |t|
      t.integer :day
      t.text :focus
      t.text :image

      t.timestamps
    end
  end
end
