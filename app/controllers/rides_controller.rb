class RidesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :edit, :destroy, :show, :update]

  def index
    @rides=Ride.all
  end

  def new
    @ride=Ride.new
  end

  def create
    @ride=Ride.new
    @ride.update(ride_params)
    @ride.save
    redirect_to rides_path
  end

  def edit
    @ride=Ride.find(params[:id])
  end

  def show
    @ride=Ride.find(params[:id])
  end

  def update
    @ride=Ride.find(params[:id])
    @ride.update(ride_params)
    @ride.save
    redirect_to rides_path
  end

  def destroy
    @ride=Ride.find(params[:id])
    @ride.delete
    redirect_to rides_path
  end

  private
  def assign_van
  end
  helper_method :assign_vehicle

  def ride_params
    params[:ride].permit(:vehicle_id, :name, :sid, :phone, :passengers, :origin, :destination)
  end

end
