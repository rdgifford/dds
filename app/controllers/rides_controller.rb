require 'twilio-ruby'

class RidesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :edit, :destroy, :show, :update]
  require 'twilio-ruby'

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

  # def call
  #   account_sid = 'ACfb98cd2cee4e1776236b872f4dbb0cb3'
  #   auth_token = '3e95a4d9cdf4d364974b16907c5da6c7'
  #   @client = Twilio::REST::Client.new account_sid, auth_token
  #   @client.account.calls.create({
  #     :to => '+15035777844',
  #   	:from => '+15038820432',
  #   	:method => 'GET',
  #   	:fallback_method => 'GET',
  #   	:status_callback_method => 'GET',
  #   	:record => 'false'
  #   })
  #   redirect_to rides_path
  # end

  private
  # def assign_van
  # end
  # helper_method :assign_vehicle

  def ride_params
    params[:ride].permit(:vehicle_id, :name, :sid, :phone, :passengers, :origin, :destination, :shift_vehicle_id)
  end

end
