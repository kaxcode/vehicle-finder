class Search < ApplicationRecord
  VEHICLES = [ "", "Motorcycle", "Truck", "Car", "RV" ]

  def listings
    @listings ||= advanced_search
  end

private
  def advanced_search
    listings = listings.where(["name LIKE ?", "#{keyword}"]) if keyword.present?
    listings = listings.where(["price >= ?", min_price]) if min_price.present?
    listings = listings.where(["price <= ?", max_price]) if max_price.present?

    return listings
  end
end
