class ShiftsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def index
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    #unless a shift does not exist and shift is valid, create a new one
    unless !Shift.exists? && Shift.valid?
    @shift = Shift.new
    @shift.save
    redirect_to shift_path(@shift)
    end
  end

  def update
  end

  def destroy
  end
end
