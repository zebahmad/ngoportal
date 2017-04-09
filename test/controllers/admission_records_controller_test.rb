require 'test_helper'

class AdmissionRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admission_record = admission_records(:one)
  end

  test "should get index" do
    get admission_records_url
    assert_response :success
  end

  test "should get new" do
    get new_admission_record_url
    assert_response :success
  end

  test "should create admission_record" do
    assert_difference('AdmissionRecord.count') do
      post admission_records_url, params: { admission_record: {  } }
    end

    assert_redirected_to admission_record_url(AdmissionRecord.last)
  end

  test "should show admission_record" do
    get admission_record_url(@admission_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_admission_record_url(@admission_record)
    assert_response :success
  end

  test "should update admission_record" do
    patch admission_record_url(@admission_record), params: { admission_record: {  } }
    assert_redirected_to admission_record_url(@admission_record)
  end

  test "should destroy admission_record" do
    assert_difference('AdmissionRecord.count', -1) do
      delete admission_record_url(@admission_record)
    end

    assert_redirected_to admission_records_url
  end
end
