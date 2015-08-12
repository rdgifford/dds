class Ride < ActiveRecord::Base
  belongs_to :navigator
  VANS = [1, 2, 3, 4, 5, 6, 7, 8, 9]
end
