# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#

class Country < ActiveRecord::Base
  has_many :locations
end
