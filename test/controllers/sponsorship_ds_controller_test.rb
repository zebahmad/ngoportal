require 'test_helper'

class SponsorshipDsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsorship_d = sponsorship_ds(:one)
  end

  test "should get index" do
    get sponsorship_ds_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsorship_d_url
    assert_response :success
  end

  test "should create sponsorship_d" do
    assert_difference('SponsorshipD.count') do
      post sponsorship_ds_url, params: { sponsorship_d: {  } }
    end

    assert_redirected_to sponsorship_d_url(SponsorshipD.last)
  end

  test "should show sponsorship_d" do
    get sponsorship_d_url(@sponsorship_d)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsorship_d_url(@sponsorship_d)
    assert_response :success
  end

  test "should update sponsorship_d" do
    patch sponsorship_d_url(@sponsorship_d), params: { sponsorship_d: {  } }
    assert_redirected_to sponsorship_d_url(@sponsorship_d)
  end

  test "should destroy sponsorship_d" do
    assert_difference('SponsorshipD.count', -1) do
      delete sponsorship_d_url(@sponsorship_d)
    end

    assert_redirected_to sponsorship_ds_url
  end
end
