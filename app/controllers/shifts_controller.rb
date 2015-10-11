class ShiftsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  before_filter :authenticate_user!

  def index
    s = Shift.active.first
    @vehicles = Vehicle.all
    @shift = s
    @shift_vehicles = s.shift_vehicles.build
    @sv = s.shift_vehicles.all
    s.user_shifts.build
    @user_shift = s.user_shifts.first
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def new
    @shift = Shift.active.first
    @shift.shift_vehicles.build
  end

  def edit
  end

#if an active shift does not exist create
#an active shift, otherwise redirect to the
#current active shift
  def create
    Shift.active.first_or_create!
    s = Shift.active.first
    s.user_shifts.build
    s.user_shifts.find_or_create_by!(user_id: current_user.id)
    redirect_to work_path
  end

  def create_vs
    params[:shift][:shift_vehicle][:vehicle_id].each do |vehicle| unless vehicle == ""
      s = Shift.active.first
      vehicle_shift = s.shift_vehicles.create(vehicle_id: vehicle)
    end
  end
    redirect_to work_path
  end

  def update
    # s = Shift.active.first
    # params[:shift_vehicles].each do |shift_vehicle|
    #   if shift_vehicle[:vehicle_id] != ""
    #     s.vehicles_shifts.create(shift_vehicle_params(shift_vehicle))
    #   end
    # end
    # s.shift_vehicles.find(params[:vehicle_id])
    # s.map {|veh| veh.vehicles_shifts.create}
    # s.find(params[:id])
    # s.vehicles_shifts.create
    # redirect_to work_path
  end

  def destroy
  end

  private
  def shift_params
    params.require(:shift).permit(:vehicle_id, user_shifts_attributes: [:id, :position_id, :shift_id, :user_id, :shift_vehicle_id, :created_at, :updated_at],
                                               shift_vehicles_attributes: [:id, :start_mileage, :end_mileage, :start_gas, :end_gas, :shift_id, :vehicle_id, :created_at, :updated_at],
                                               vehicles_attributes: [:id, :vehicle_number, :created_at, :updated_at])
  end

  # def vehicles_shifts_create(vn)
  #   s = Shift.active.first
  #   s.vehicles_shifts.build
  #   s.vehicles_shifts.create!(vehicle_id: vn)
  # end
end
  # @vehicles_shifts = @shift.create_vehicles_shift(vehicle_id: vn)
