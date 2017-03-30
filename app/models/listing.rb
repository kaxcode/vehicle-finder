class Listing < ApplicationRecord
  VEHICLES = [ "", "Motorcycle", "Truck", "Car", "RV" ]
  belongs_to :user
end
