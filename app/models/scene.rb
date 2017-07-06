# == Schema Information
#
# Table name: scenes
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :string
#  notes        :text
#  scene_number :integer
#  arc_id       :integer
#

class Scene < ActiveRecord::Base
  belongs_to :arc
  has_many :scene_locations
  has_many :character_scenes
  has_many :locations, through: :scene_locations
  has_many :characters, through: :character_scenes

  def display_number
      (self.scene_number.nil? || self.scene_number == "") ? "" : "Scene ##{self.scene_number} - "
  end
  
end
