class AddImageToShoe < ActiveRecord::Migration[7.0]
  def change
    add_column :shoes, :image, :string
  end
end
