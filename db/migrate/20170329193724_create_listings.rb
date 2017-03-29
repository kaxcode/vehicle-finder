class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.text :description
      t.integer :price
      t.string :color
      t.string :transmission
      t.string :body_type

      t.timestamps
    end
  end
end
