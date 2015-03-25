require 'rails_helper'

describe Listing do
  it { should validate_presence_of :price }
  it { should validate_presence_of :location }
  it { should validate_presence_of :property_type }
  it { should validate_presence_of :user_id }
end
