# == Schema Information
#
# Table name: character_scenes
#
#  id           :integer          not null, primary key
#  character_id :integer
#  scene_id     :integer
#

class CharacterScene < ActiveRecord::Base
  belongs_to :character
  belongs_to :scene
end
