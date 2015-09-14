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
    @shift = Shift.new(created_at: Time.now)
    @shift.save
    redirect_to shift_path(@shift)
  end

  def update
  end

  def destroy
  end
end
