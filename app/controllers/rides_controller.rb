class RidesController < ApplicationController
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
    @van_id = :van_id.select
  redirect_to rides_path
  end

  def ride_params
    params[:ride].permit(:van_id, :name, :sid, :phone, :passengers, :origin, :destination)
  end

end
