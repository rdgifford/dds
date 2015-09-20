class UsersShiftsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @users_shift = Users_shift.new
  end

  def edit
  end

  #if an active users_shift does not exist create one
  #a users shift has a unique user_id
  #user_id = current_user.id
  
  def create
  end

  def update
  end

  def destroy
  end
end
