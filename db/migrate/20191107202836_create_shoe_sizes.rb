class CreateShoeSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_sizes do |t|
      t.belongs_to :shoe, foreign_key: true
      t.integer :size

      t.timestamps
    end
  end
end
