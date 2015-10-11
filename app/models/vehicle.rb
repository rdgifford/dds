class Vehicle < ActiveRecord::Base
  has_many :shift_vehicles
  has_many :shifts, through: :shift_vehicles

  accepts_nested_attributes_for :shift_vehicles
end
