class VehiclesShift < ActiveRecord::Base
  has_many :rides
  belongs_to :vehicle
  belongs_to :shift
end
