require 'test_helper'

class OffendercategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offendercategory = offendercategories(:one)
  end

  test "should get index" do
    get offendercategories_url
    assert_response :success
  end

  test "should get new" do
    get new_offendercategory_url
    assert_response :success
  end

  test "should create offendercategory" do
    assert_difference('Offendercategory.count') do
      post offendercategories_url, params: { offendercategory: { name: @offendercategory.name } }
    end

    assert_redirected_to offendercategory_url(Offendercategory.last)
  end

  test "should show offendercategory" do
    get offendercategory_url(@offendercategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_offendercategory_url(@offendercategory)
    assert_response :success
  end

  test "should update offendercategory" do
    patch offendercategory_url(@offendercategory), params: { offendercategory: { name: @offendercategory.name } }
    assert_redirected_to offendercategory_url(@offendercategory)
  end

  test "should destroy offendercategory" do
    assert_difference('Offendercategory.count', -1) do
      delete offendercategory_url(@offendercategory)
    end

    assert_redirected_to offendercategories_url
  end
end
