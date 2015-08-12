class DispatchersController < ApplicationController
  before_action :set_dispatcher, only: [:show, :edit, :update, :destroy]

  # GET /dispatchers
  # GET /dispatchers.json
  def index
    @rides = Ride.all
    @dispatchers = Dispatcher.all
  end

  # GET /dispatchers/1
  # GET /dispatchers/1.json
  def show
  end

  # GET /dispatchers/new
  def new
    @dispatcher = Dispatcher.new
  end

  # GET /dispatchers/1/edit
  def edit
  end

  # POST /dispatchers
  # POST /dispatchers.json
  def create
    @dispatcher = Dispatcher.new(dispatcher_params)

    respond_to do |format|
      if @dispatcher.save
        format.html { redirect_to @dispatcher, notice: 'Dispatcher was successfully created.' }
        format.json { render :show, status: :created, location: @dispatcher }
      else
        format.html { render :new }
        format.json { render json: @dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispatchers/1
  # PATCH/PUT /dispatchers/1.json
  def update
    respond_to do |format|
      if @dispatcher.update(dispatcher_params)
        format.html { redirect_to @dispatcher, notice: 'Dispatcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @dispatcher }
      else
        format.html { render :edit }
        format.json { render json: @dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispatchers/1
  # DELETE /dispatchers/1.json
  def destroy
    @dispatcher.destroy
    respond_to do |format|
      format.html { redirect_to dispatchers_url, notice: 'Dispatcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatcher
      @dispatcher = Dispatcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dispatcher_params
      params.require(:dispatcher).permit(:name)
    end
end
