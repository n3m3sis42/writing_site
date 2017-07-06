class CreateCharacters < ActiveRecord::Migration

  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :goes_by
      t.string :birth_date
      t.integer :height_feet
      t.integer :height_inches
      t.integer :weight
      t.string :eye_color
      t.string :hair_color
      t.string :skin_color
    end
  end

end
