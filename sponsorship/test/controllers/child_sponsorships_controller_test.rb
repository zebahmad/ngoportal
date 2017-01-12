require 'test_helper'

class ChildSponsorshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_sponsorship = child_sponsorships(:one)
  end

  test "should get index" do
    get child_sponsorships_url
    assert_response :success
  end

  test "should get new" do
    get new_child_sponsorship_url
    assert_response :success
  end

  test "should create child_sponsorship" do
    assert_difference('ChildSponsorship.count') do
      post child_sponsorships_url, params: { child_sponsorship: { child_id: @child_sponsorship.child_id, comments: @child_sponsorship.comments, event: @child_sponsorship.event, periodicity: @child_sponsorship.periodicity, sponsor_id: @child_sponsorship.sponsor_id, sponsorship_type: @child_sponsorship.sponsorship_type, start_from: @child_sponsorship.start_from, valid_till: @child_sponsorship.valid_till } }
    end

    assert_redirected_to child_sponsorship_url(ChildSponsorship.last)
  end

  test "should show child_sponsorship" do
    get child_sponsorship_url(@child_sponsorship)
    assert_response :success
  end

  test "should get edit" do
    get edit_child_sponsorship_url(@child_sponsorship)
    assert_response :success
  end

  test "should update child_sponsorship" do
    patch child_sponsorship_url(@child_sponsorship), params: { child_sponsorship: { child_id: @child_sponsorship.child_id, comments: @child_sponsorship.comments, event: @child_sponsorship.event, periodicity: @child_sponsorship.periodicity, sponsor_id: @child_sponsorship.sponsor_id, sponsorship_type: @child_sponsorship.sponsorship_type, start_from: @child_sponsorship.start_from, valid_till: @child_sponsorship.valid_till } }
    assert_redirected_to child_sponsorship_url(@child_sponsorship)
  end

  test "should destroy child_sponsorship" do
    assert_difference('ChildSponsorship.count', -1) do
      delete child_sponsorship_url(@child_sponsorship)
    end

    assert_redirected_to child_sponsorships_url
  end
end
