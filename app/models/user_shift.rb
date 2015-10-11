class UserShift < ActiveRecord::Base
  belongs_to :shift
  belongs_to :user
  belongs_to :shift_vehicle

  scope :active, -> { where(:created_at => Time.now.ago(5.hours)..Time.now)}

  def to_s
    name
  end
end
