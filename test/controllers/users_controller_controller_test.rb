require 'test_helper'

class UsersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get meals_controller" do
    get users_controller_meals_controller_url
    assert_response :success
  end

  test "should get companies_controller" do
    get users_controller_companies_controller_url
    assert_response :success
  end

  test "should get dietary_restrictions_controller" do
    get users_controller_dietary_restrictions_controller_url
    assert_response :success
  end

end
