class ShiftsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_filter :authenticate_user!
  def index
    s = Shift.active.first
    @shift = s
    s.users_shifts.build
    @users_shift = s.users_shifts.first_or_create!(user_id: current_user.id)
  end

  def show
    @shift = Shift.find(params[:id])
    @shift.users_shifts.build
  end

  def new
    @shift.users_shifts.build
  end

  def edit
  end

#if an active shift does not exist create
#an active shift, otherwise redirect to the
#current active shift
  def create
    Shift.active.first_or_create!
    redirect_to work_path
  end

  def update
  end

  def destroy
  end

  private
  def shift_params
    params.require(:shift).permit(:vehicle_id, users_shifts_attributes: [:position_id, :shift_id, :user_id, :created_at, :updated_at])
  end
end
