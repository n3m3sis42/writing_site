# == Schema Information
#
# Table name: characters
#
#  id            :integer          not null, primary key
#  first_name    :string
#  middle_name   :string
#  last_name     :string
#  goes_by       :string
#  birth_date    :string
#  height_feet   :integer
#  height_inches :integer
#  weight        :integer
#  eye_color     :string
#  hair_color    :string
#  skin_color    :string
#

class Character < ActiveRecord::Base
  has_many :character_locations
  has_many :character_scenes
  has_many :locations, through: :character_locations
  has_many :scenes, through: :character_scenes

  validates :first_name, :last_name, presence: true
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true

  def full_name
    (self.goes_by.nil? || self.goes_by == "") ? "#{self.first_name} #{self.last_name}" : "#{self.goes_by} #{self.last_name}"
  end

  def display_goes_by
    (self.goes_by.nil? || self.goes_by == "") ? "" : "(Goes by '#{self.goes_by}')"
  end

end
