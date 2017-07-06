# == Schema Information
#
# Table name: arcs
#
#  id          :integer          not null, primary key
#  title       :string
#  arc_number  :integer
#  description :string
#

class Arc < ActiveRecord::Base
  has_many :scenes

  validates :title, uniqueness: true
  validates :arc_number, uniqueness: true

end
