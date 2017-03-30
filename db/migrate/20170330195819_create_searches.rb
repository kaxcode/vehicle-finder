class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :vehicle_type
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end
