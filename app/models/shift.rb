class Shift < ActiveRecord::Base
  has_many :users_shifts, dependent: :destroy
  has_many :users, through: :users_shifts
  accepts_nested_attributes_for :users_shifts

  # validates_time :created_at, :on_or_before => '2:30_am'
  scope :active, -> { where(:created_at => Time.now.ago(5.hours)..Time.now)}
  validates        :created_at, uniqueness: true
  validate         :active_shift_limit

  def to_s
    name
  end

private
  def hours_of_operation
  end

  def active_shift_limit
    if Shift.active.count >= 1
    errors.add(:base, "Shift already exists for tonight")
    end
  end

  def assign_pid(pid)
    s = Shift.active.first
    s.users_shifts.build
    s.users_shifts.first_or_create!(user_id: current_user.id)
    update_attributes(position_id: pid)
  end
end
