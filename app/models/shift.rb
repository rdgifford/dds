class Shift < ActiveRecord::Base
  has_and_belongs_to_many :vehiclesshifts
  has_and_belongs_to_many :users

  scope :night, -> { where(:created_at => Time.now - 5.hours)}
  validates        :created_at, uniqueness: true
  validates_time   :created_at, :between => ['9:30pm', '2:30am']
#                  :created_at, :before => { 5.hours.ago }
  validate  :shift_limit,  on: :create

  def shift_limit
    if Shifts.night.count >= 1
    errors.add(:created_at, "Shift already exists for tonight")
    end
  end
end
