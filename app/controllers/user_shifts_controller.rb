class UserShiftsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @users_shift = User_shift.new
  end

  def edit
  end

  #if an active users_shift does not exist create one
  #a users shift has a unique user_id
  #user_id = current_user.id

  def create
  end

#update the position_id attribute and redirect to the work controller.
  def update
    @user_shift=UserShift.find(params[:id])
    @user_shift.update(user_shift_params)
    @user_shift.save
    redirect_to work_path
  end

  def destroy
  end

private
  def user_shift_params
    params[:user_shift].permit(:id, :position_id, :shift_id, :user_id, :shift_vehicle_id, :created_at, :updated_at)
  end
end
