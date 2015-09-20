class UsersShift < ActiveRecord::Base
  belongs_to :shift
  belongs_to :user

  scope :active, -> { where(:created_at => Time.now.ago(5.hours)..Time.now)}
  # s = Shift.active.first
  # s.Users_shifts.build
  # Users_shift = Shift.users_shift
  def to_s
    name
  end
end
