class Ride < ActiveRecord::Base
  belongs_to :shift_vehicle

  accepts_nested_attributes_for :shift_vehicle
end
