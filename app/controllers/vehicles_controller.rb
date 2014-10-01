class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.order("created_at ASC").page(params[:page])
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
  end

  def search
    if params[:search] && params[:search][:start_year].present?
      start_year = params[:search][:start_year].to_i
    else
      start_year = 1900
    end
    if params[:search] && params[:search][:end_year].present?
      end_year = params[:search][:end_year].to_i
    else
      end_year = 2100
    end
    if params[:search] && params[:search][:price].present?
      price = params[:search][:price].to_i
    else
      price = 999999
    end
    if params[:search] && params[:search][:mileage].present? && params[:search][:mileage] != 'All'
      mileage = params[:search][:mileage].to_i
    else
      mileage = 999999
    end
    if params[:search] && params[:search][:make]
      make = params[:search][:make]
    end
    if params[:search] && params[:search][:model]
      model = params[:search][:model]
    end
    if params[:search] && params[:search][:bodystyle]
      bodystyle = params[:search][:bodystyle]
    end
    if params[:search] && params[:search][:sort]
      sort = params[:search][:sort]
    end
    # if params[:search][:make].nil?
    #   make = Vehicle.select(:make).distinct(:all)
    # end
    #
    # if params[:search][:model].nil?
    #   model = Vehicle.select(:model).distinct(:all)
    # end

    range = start_year..end_year
    range = range.map(&:to_s)

    @vehicles = Vehicle.where(year: range)

    if mileage == 100001
      @vehicles = @vehicles.where("mileage >= 100000")
    elsif mileage == 'All'
      @vehicles = @vehicles.where("mileage >= 0")
    else
      @vehicles = @vehicles.where("mileage < ?", mileage)
    end
    if price == 30001
      @vehicles = @vehicles.where("price >= 30000")
    # elsif price == "All Prices"
    else
      @vehicles = @vehicles.where("price < ?", price)
    end

    if bodystyle == "All"
    elsif bodystyle
      @vehicles = @vehicles.where(:bodystyle => bodystyle)
    end
    if make == 'All Makes'
      @models = Vehicle.select(:model).distinct
    elsif make
      @models = Vehicle.select(:model).where(:make => make).distinct
      @vehicles = @vehicles.where(:make => make)
    end
    if model
      @vehicles = @vehicles.where(:model => model)
    end
    if sort == 'Price: Highest'
      @vehicles = @vehicles.order('price desc')
    end
    if sort == 'Price: Lowest'
      @vehicles = @vehicles.order('price asc')
    end
    if sort == 'Mileage: Highest'
      @vehicles = @vehicles.order('mileage desc')
    end
    if sort == 'Mileage: Lowest'
      @vehicles = @vehicles.order('mileage asc')
    end
    @vehicles = @vehicles.page(params[:page])
    render action: "index"
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vehicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url }
      format.json { head :no_content }
    end
  end

  # POST /vehicles/import
  def import
    Vehicle.import(params[:file])
    redirect_to root_url, notice: "Vehicles imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:dealer_id, :vin, :stock_number, :year, :make, :model, :model_code, :trim, :bodystyle, :transmission, :drive_train, :doors, :exterior_color, :interior_color, :truck_cab, :truck_bed, :msrp, :invoice, :price, :wholesale_price, :retail_price, :sale_price, :mileage, :comments, :options, :images, :type, :certified, :engine, :engine_size, :fule, :dealership, :dealership_address1, :dealership_address_2, :dealership_city, :dealership_state, :dealership_postalcode, :dealership_country, :dealership_phone, :dealership_url)
    end
end
