# == Schema Information
#
# Table name: character_locations
#
#  id            :integer          not null, primary key
#  character_id  :integer
#  location_id   :integer
#  location_type :string
#

class CharacterLocation < ActiveRecord::Base
  belongs_to :character
  belongs_to :location  
end
