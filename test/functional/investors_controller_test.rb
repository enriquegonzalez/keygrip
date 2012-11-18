require 'test_helper'

class InvestorsControllerTest < ActionController::TestCase
  setup do
    @investor = investors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investor" do
    assert_difference('Investor.count') do
      post :create, investor: { accredidation: @investor.accredidation, bio: @investor.bio, budget_size: @investor.budget_size, first_name: @investor.first_name, investments: @investor.investments, last_name: @investor.last_name, location: @investor.location }
    end

    assert_redirected_to investor_path(assigns(:investor))
  end

  test "should show investor" do
    get :show, id: @investor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investor
    assert_response :success
  end

  test "should update investor" do
    put :update, id: @investor, investor: { accredidation: @investor.accredidation, bio: @investor.bio, budget_size: @investor.budget_size, first_name: @investor.first_name, investments: @investor.investments, last_name: @investor.last_name, location: @investor.location }
    assert_redirected_to investor_path(assigns(:investor))
  end

  test "should destroy investor" do
    assert_difference('Investor.count', -1) do
      delete :destroy, id: @investor
    end

    assert_redirected_to investors_path
  end
end
