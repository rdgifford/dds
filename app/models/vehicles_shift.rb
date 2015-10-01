class VehiclesShift < ActiveRecord::Base
  has_many :rides
  belongs_to :shift
  belongs_to :vehicle
end
