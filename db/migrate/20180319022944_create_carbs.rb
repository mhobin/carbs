class CreateCarbs < ActiveRecord::Migration[5.1]
  def change
    create_table :carbs do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
