class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :color
      t.string :style
      t.text :description

      t.timestamps
    end
  end
end
