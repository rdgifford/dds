class ShiftVehicle < ActiveRecord::Base
  has_many :rides
  has_many :user_shifts
  belongs_to :shift
  belongs_to :vehicle

  accepts_nested_attributes_for :vehicle
end
