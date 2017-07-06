class CreateCharacterLocations < ActiveRecord::Migration

  def change
    create_table :character_locations do |t|
      t.integer :character_id
      t.integer :location_id
      t.string :location_type
    end
  end

end
