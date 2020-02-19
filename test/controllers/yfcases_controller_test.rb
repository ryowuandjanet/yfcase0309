require 'test_helper'

class YfcasesControllerTest < ActionController::TestCase
  setup do
    @yfcase = yfcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yfcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yfcase" do
    assert_difference('Yfcase.count') do
      post :create, yfcase: { address: @yfcase.address, casenumber: @yfcase.casenumber, landarea: @yfcase.landarea, landholdingpoint: @yfcase.landholdingpoint, landurl: @yfcase.landurl }
    end

    assert_redirected_to yfcase_path(assigns(:yfcase))
  end

  test "should show yfcase" do
    get :show, id: @yfcase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yfcase
    assert_response :success
  end

  test "should update yfcase" do
    patch :update, id: @yfcase, yfcase: { address: @yfcase.address, casenumber: @yfcase.casenumber, landarea: @yfcase.landarea, landholdingpoint: @yfcase.landholdingpoint, landurl: @yfcase.landurl }
    assert_redirected_to yfcase_path(assigns(:yfcase))
  end

  test "should destroy yfcase" do
    assert_difference('Yfcase.count', -1) do
      delete :destroy, id: @yfcase
    end

    assert_redirected_to yfcases_path
  end
end
