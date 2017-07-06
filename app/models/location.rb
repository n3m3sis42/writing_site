# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  country_id  :integer
#

class Location < ActiveRecord::Base
  belongs_to :country
  has_many :character_locations
  has_many :scene_locations
  has_many :characters, through: :character_locations
  has_many :scenes, through: :scene_locations
end
