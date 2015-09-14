class Shift < ActiveRecord::Base
  has_and_belongs_to_many :vehiclesshifts
  has_and_belongs_to_many :users
  validates      :created_at, uniqueness: true
#   validates_time :created_at, :between => ['9:30pm', '2:30am'],
#                  :created_at, :before => { 5.hours.ago }
end
