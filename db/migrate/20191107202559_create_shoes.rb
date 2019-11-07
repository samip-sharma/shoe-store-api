class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.boolean :latest, :default => false

      t.timestamps
    end
  end
end
