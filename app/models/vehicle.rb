class Vehicle < ActiveRecord::Base
  has_many :vehicles_shifts
  has_many :shifts, through: :vehicles_shifts
end
