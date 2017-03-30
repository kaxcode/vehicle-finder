class AddsVehicleTypeToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :vehicle_type, :string
  end
end
