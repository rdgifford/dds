class UsersShift < ActiveRecord::Base
  has_and_belongs_to_many :shifts, through :users
end
