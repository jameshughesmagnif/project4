class Gym < ActiveRecord::Base
  attr_accessor :name, :address, :rating

  has_many :plans

  validates :name, :presence => true, :length => { :minimum => 5 }
  validates :address, :presence => true
  validates :rating, :presence => true
end
