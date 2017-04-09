require 'test_helper'

class ProgressRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_record = progress_records(:one)
  end

  test "should get index" do
    get progress_records_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_record_url
    assert_response :success
  end

  test "should create progress_record" do
    assert_difference('ProgressRecord.count') do
      post progress_records_url, params: { progress_record: {  } }
    end

    assert_redirected_to progress_record_url(ProgressRecord.last)
  end

  test "should show progress_record" do
    get progress_record_url(@progress_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_record_url(@progress_record)
    assert_response :success
  end

  test "should update progress_record" do
    patch progress_record_url(@progress_record), params: { progress_record: {  } }
    assert_redirected_to progress_record_url(@progress_record)
  end

  test "should destroy progress_record" do
    assert_difference('ProgressRecord.count', -1) do
      delete progress_record_url(@progress_record)
    end

    assert_redirected_to progress_records_url
  end
end
