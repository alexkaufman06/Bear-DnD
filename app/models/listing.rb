class Listing < ActiveRecord::Base
  belongs_to :user
  validates :price, :location, :property_type, :user_id, presence: true
end
