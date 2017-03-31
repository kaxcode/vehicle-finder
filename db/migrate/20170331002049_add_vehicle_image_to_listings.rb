class AddVehicleImageToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :vehicle_image_id, :string
  end
end
