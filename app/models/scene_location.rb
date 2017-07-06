# == Schema Information
#
# Table name: scene_locations
#
#  id          :integer          not null, primary key
#  scene_id    :integer
#  location_id :integer
#

class SceneLocation < ActiveRecord::Base
  belongs_to :scene
  belongs_to :location
end
