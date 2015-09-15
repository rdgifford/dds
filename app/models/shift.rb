class Shift < ActiveRecord::Base
  has_and_belongs_to_many :vehiclesshifts
  has_and_belongs_to_many :users

  scope :active, -> { where(:created_at => Time.now.ago(5.hours)..Time.now)}
  validates        :created_at, uniqueness: true
  # validates_time   :created_at, :between => ['9:30pm', '2:30am']
#                  :created_at, :before => { 5.hours.ago }
  validate  :active_shift_limit,  on: :create

private
  def active_shift_limit
    if Shift.active.count >= 1
    errors.add(:created_at, "Shift already exists for tonight")
    end
  end
end
