class Plan < ActiveRecord::Base
  belongs_to :gym
  attr_accessor :months, :monthly_price, :num_classes
end
