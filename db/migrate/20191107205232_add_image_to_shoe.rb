class AddImageToShoe < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :image, :string
  end
end
