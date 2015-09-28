class ShiftsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_filter :authenticate_user!

  def index
    s = Shift.active.first
    @shift = s
    s.users_shifts.build
    @users_shift = s.users_shifts.first
    s.vehicles_shifts.build
    @vehicles_shift = s.vehicles_shifts.all
    @vehicles = Vehicle.all
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def new
  end

  def edit
  end

#if an active shift does not exist create
#an active shift, otherwise redirect to the
#current active shift
  def create
    Shift.active.first_or_create!
    s = Shift.active.first
    s.users_shifts.build
    s.users_shifts.find_or_create_by!(user_id: current_user.id)
    redirect_to work_path
  end

  def update
  end

  def destroy
  end

  private
  def shift_params
    params.require(:shift).permit(:vehicle_id, users_shifts_attributes: [:position_id, :shift_id, :user_id, :created_at, :updated_at],
                                               vehicles_attributes: [:id, :vehicle_number, :model, :created_at, :updated_at],
                                               vehicles_shifts_attributes: [:id, :start_mileage, :end_mileage, :start_gas, :end_gas, :shift_id, :vehicle_id, :created_at, :updated_at])
  end

  # def vehicles_shifts_create(vn)
  #   s = Shift.active.first
  #   s.vehicles_shifts.build
  #   s.vehicles_shifts.create!(vehicle_id: vn)
  # end
end
  # @vehicles_shifts = @shift.create_vehicles_shift(vehicle_id: vn)
