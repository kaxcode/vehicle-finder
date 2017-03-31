class Listing < ApplicationRecord
  VEHICLES = [ "", "Motorcycle", "Truck", "Car", "RV" ]

  attachment :vehicle_image
  belongs_to :user
end
