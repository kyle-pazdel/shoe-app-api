class CreateSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :sizes do |t|
      t.integer :number

      t.timestamps
    end
  end
end
