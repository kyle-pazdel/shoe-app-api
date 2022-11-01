class CreateShoeSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoe_sizes do |t|
      t.integer :shoe_id
      t.integer :size_id

      t.timestamps
    end
  end
end
