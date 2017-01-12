require 'test_helper'

class ChildRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_record = child_records(:one)
  end

  test "should get index" do
    get child_records_url
    assert_response :success
  end

  test "should get new" do
    get new_child_record_url
    assert_response :success
  end

  test "should create child_record" do
    assert_difference('ChildRecord.count') do
      post child_records_url, params: { child_record: { child_id: @child_record.child_id, contents: @child_record.contents, created_by: @child_record.created_by, created_on: @child_record.created_on, last_updated_by: @child_record.last_updated_by, last_updated_on: @child_record.last_updated_on, record_type: @child_record.record_type } }
    end

    assert_redirected_to child_record_url(ChildRecord.last)
  end

  test "should show child_record" do
    get child_record_url(@child_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_child_record_url(@child_record)
    assert_response :success
  end

  test "should update child_record" do
    patch child_record_url(@child_record), params: { child_record: { child_id: @child_record.child_id, contents: @child_record.contents, created_by: @child_record.created_by, created_on: @child_record.created_on, last_updated_by: @child_record.last_updated_by, last_updated_on: @child_record.last_updated_on, record_type: @child_record.record_type } }
    assert_redirected_to child_record_url(@child_record)
  end

  test "should destroy child_record" do
    assert_difference('ChildRecord.count', -1) do
      delete child_record_url(@child_record)
    end

    assert_redirected_to child_records_url
  end
end
