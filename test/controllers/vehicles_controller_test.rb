require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { bodystyle: @vehicle.bodystyle, certified: @vehicle.certified, comments: @vehicle.comments, dealer_id: @vehicle.dealer_id, dealership: @vehicle.dealership, dealership_address1: @vehicle.dealership_address1, dealership_address_2: @vehicle.dealership_address_2, dealership_city: @vehicle.dealership_city, dealership_country: @vehicle.dealership_country, dealership_phone: @vehicle.dealership_phone, dealership_postalcode: @vehicle.dealership_postalcode, dealership_state: @vehicle.dealership_state, dealership_url: @vehicle.dealership_url, doors: @vehicle.doors, drive_train: @vehicle.drive_train, engine: @vehicle.engine, engine_size: @vehicle.engine_size, exterior_color: @vehicle.exterior_color, fule: @vehicle.fule, images: @vehicle.images, interior_color: @vehicle.interior_color, invoice: @vehicle.invoice, make: @vehicle.make, mileage: @vehicle.mileage, model: @vehicle.model, model_code: @vehicle.model_code, msrp: @vehicle.msrp, options: @vehicle.options, price: @vehicle.price, retail_price: @vehicle.retail_price, sale_price: @vehicle.sale_price, stock_number: @vehicle.stock_number, transmission: @vehicle.transmission, trim: @vehicle.trim, truck_bed: @vehicle.truck_bed, truck_cab: @vehicle.truck_cab, type: @vehicle.type, vin: @vehicle.vin, wholesale_price: @vehicle.wholesale_price, year: @vehicle.year }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { bodystyle: @vehicle.bodystyle, certified: @vehicle.certified, comments: @vehicle.comments, dealer_id: @vehicle.dealer_id, dealership: @vehicle.dealership, dealership_address1: @vehicle.dealership_address1, dealership_address_2: @vehicle.dealership_address_2, dealership_city: @vehicle.dealership_city, dealership_country: @vehicle.dealership_country, dealership_phone: @vehicle.dealership_phone, dealership_postalcode: @vehicle.dealership_postalcode, dealership_state: @vehicle.dealership_state, dealership_url: @vehicle.dealership_url, doors: @vehicle.doors, drive_train: @vehicle.drive_train, engine: @vehicle.engine, engine_size: @vehicle.engine_size, exterior_color: @vehicle.exterior_color, fule: @vehicle.fule, images: @vehicle.images, interior_color: @vehicle.interior_color, invoice: @vehicle.invoice, make: @vehicle.make, mileage: @vehicle.mileage, model: @vehicle.model, model_code: @vehicle.model_code, msrp: @vehicle.msrp, options: @vehicle.options, price: @vehicle.price, retail_price: @vehicle.retail_price, sale_price: @vehicle.sale_price, stock_number: @vehicle.stock_number, transmission: @vehicle.transmission, trim: @vehicle.trim, truck_bed: @vehicle.truck_bed, truck_cab: @vehicle.truck_cab, type: @vehicle.type, vin: @vehicle.vin, wholesale_price: @vehicle.wholesale_price, year: @vehicle.year }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
