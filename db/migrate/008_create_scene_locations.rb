class CreateSceneLocations < ActiveRecord::Migration

  def change
    create_table :scene_locations do |t|
      t.integer :scene_id
      t.integer :location_id
    end
  end

end
