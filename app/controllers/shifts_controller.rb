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

#if an active shift does not exist create a
#new active shift, otherwise redirect to the
#current active shift
  def create
    if Shift.active.exists?
      redirect_to shift_path(@shift)
    else
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
