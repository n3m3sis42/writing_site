class CreateScenes < ActiveRecord::Migration

  def change
    create_table :scenes do |t|
      t.string :name
      t.string :description
      t.text :notes
      t.integer :scene_number
      t.integer :arc_id
    end
  end

end
