class Shelter < ApplicationRecord
  has_many :pets

  validates_presence_of :name, :addres, :city, :state, :zip
end
