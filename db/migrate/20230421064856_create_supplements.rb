class CreateSupplements < ActiveRecord::Migration[5.2]
  def change
    create_table :supplements do |t|
      t.text :name
      t.text :intakedirection
      t.text :effects

      t.timestamps
    end
  end
end
