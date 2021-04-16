require 'test_helper'

class IncidentcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incidentcategory = incidentcategories(:one)
  end

  test "should get index" do
    get incidentcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_incidentcategory_url
    assert_response :success
  end

  test "should create incidentcategory" do
    assert_difference('Incidentcategory.count') do
      post incidentcategories_url, params: { incidentcategory: { name: @incidentcategory.name } }
    end

    assert_redirected_to incidentcategory_url(Incidentcategory.last)
  end

  test "should show incidentcategory" do
    get incidentcategory_url(@incidentcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_incidentcategory_url(@incidentcategory)
    assert_response :success
  end

  test "should update incidentcategory" do
    patch incidentcategory_url(@incidentcategory), params: { incidentcategory: { name: @incidentcategory.name } }
    assert_redirected_to incidentcategory_url(@incidentcategory)
  end

  test "should destroy incidentcategory" do
    assert_difference('Incidentcategory.count', -1) do
      delete incidentcategory_url(@incidentcategory)
    end

    assert_redirected_to incidentcategories_url
  end
end
