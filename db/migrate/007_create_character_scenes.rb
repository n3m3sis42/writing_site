class CreateCharacterScenes < ActiveRecord::Migration

  def change
    create_table :character_scenes do |t|
      t.integer :character_id
      t.integer :scene_id
    end
  end

end
