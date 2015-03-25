class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :location
      t.string :property_type
      t.integer :user_id

      t.timestamps
    end
  end
end
