class NavigatorsController < ApplicationController
  before_action :set_navigator, only: [:show, :edit, :update, :destroy]

  # GET /navigators
  # GET /navigators.json
  def index
    @rides = Ride.all
    @navigators = Navigator.all
  end

  # GET /navigators/1
  # GET /navigators/1.json
  def show
  end

  # GET /navigators/new
  def new
    @navigator = Navigator.new
  end

  # GET /navigators/1/edit
  def edit
  end

  # POST /navigators
  # POST /navigators.json
  def create
    @navigator = Navigator.new(navigator_params)

    respond_to do |format|
      if @navigator.save
        format.html { redirect_to @navigator, notice: 'Navigator was successfully created.' }
        format.json { render :show, status: :created, location: @navigator }
      else
        format.html { render :new }
        format.json { render json: @navigator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navigators/1
  # PATCH/PUT /navigators/1.json
  def update
    respond_to do |format|
      if @navigator.update(navigator_params)
        format.html { redirect_to @navigator, notice: 'Navigator was successfully updated.' }
        format.json { render :show, status: :ok, location: @navigator }
      else
        format.html { render :edit }
        format.json { render json: @navigator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navigators/1
  # DELETE /navigators/1.json
  def destroy
    @navigator.destroy
    respond_to do |format|
      format.html { redirect_to navigators_url, notice: 'Navigator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navigator
      @navigator = Navigator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navigator_params
      params.require(:navigator).permit(:completion)
    end
end
