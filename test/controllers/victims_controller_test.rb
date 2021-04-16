require 'test_helper'

class VictimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @victim = victims(:one)
  end

  test "should get index" do
    get victims_url
    assert_response :success
  end

  test "should get new" do
    get new_victim_url
    assert_response :success
  end

  test "should create victim" do
    assert_difference('Victim.count') do
      post victims_url, params: { victim: { address: @victim.address, agegroup: @victim.agegroup, comment: @victim.comment, contact: @victim.contact, incident: @victim.incident, name: @victim.name } }
    end

    assert_redirected_to victim_url(Victim.last)
  end

  test "should show victim" do
    get victim_url(@victim)
    assert_response :success
  end

  test "should get edit" do
    get edit_victim_url(@victim)
    assert_response :success
  end

  test "should update victim" do
    patch victim_url(@victim), params: { victim: { address: @victim.address, agegroup: @victim.agegroup, comment: @victim.comment, contact: @victim.contact, incident: @victim.incident, name: @victim.name } }
    assert_redirected_to victim_url(@victim)
  end

  test "should destroy victim" do
    assert_difference('Victim.count', -1) do
      delete victim_url(@victim)
    end

    assert_redirected_to victims_url
  end
end
