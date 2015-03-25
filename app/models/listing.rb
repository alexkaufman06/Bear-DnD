class Listing < ActiveRecord::Base
  validates :price, :location, :property_type, :user_id, presence: true
end
