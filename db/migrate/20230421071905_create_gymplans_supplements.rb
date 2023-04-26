class CreateGymplansSupplements < ActiveRecord::Migration[5.2]
  def change
    create_table :gymplans_supplements, :id => false do |t|
      t.integer :gymplan_id
      t.integer :supplement_id
    end
  end
end
