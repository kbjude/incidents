require 'test_helper'

class OffendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offender = offenders(:one)
  end

  test "should get index" do
    get offenders_url
    assert_response :success
  end

  test "should get new" do
    get new_offender_url
    assert_response :success
  end

  test "should create offender" do
    assert_difference('Offender.count') do
      post offenders_url, params: { offender: { address: @offender.address, comment: @offender.comment, contact: @offender.contact, incident_id: @offender.incident_id, name: @offender.name, offendercategory_id: @offender.offendercategory_id } }
    end

    assert_redirected_to offender_url(Offender.last)
  end

  test "should show offender" do
    get offender_url(@offender)
    assert_response :success
  end

  test "should get edit" do
    get edit_offender_url(@offender)
    assert_response :success
  end

  test "should update offender" do
    patch offender_url(@offender), params: { offender: { address: @offender.address, comment: @offender.comment, contact: @offender.contact, incident_id: @offender.incident_id, name: @offender.name, offendercategory_id: @offender.offendercategory_id } }
    assert_redirected_to offender_url(@offender)
  end

  test "should destroy offender" do
    assert_difference('Offender.count', -1) do
      delete offender_url(@offender)
    end

    assert_redirected_to offenders_url
  end
end
