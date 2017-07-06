class CreateArcs < ActiveRecord::Migration

  def change
    create_table :arcs do |t|
      t.string :title
      t.integer :arc_number
      t.string :description
    end
  end

end
