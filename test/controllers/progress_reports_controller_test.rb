require 'test_helper'

class ProgressReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progress_report = progress_reports(:one)
  end

  test "should get index" do
    get progress_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_progress_report_url
    assert_response :success
  end

  test "should create progress_report" do
    assert_difference('ProgressReport.count') do
      post progress_reports_url, params: { progress_report: {  } }
    end

    assert_redirected_to progress_report_url(ProgressReport.last)
  end

  test "should show progress_report" do
    get progress_report_url(@progress_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_progress_report_url(@progress_report)
    assert_response :success
  end

  test "should update progress_report" do
    patch progress_report_url(@progress_report), params: { progress_report: {  } }
    assert_redirected_to progress_report_url(@progress_report)
  end

  test "should destroy progress_report" do
    assert_difference('ProgressReport.count', -1) do
      delete progress_report_url(@progress_report)
    end

    assert_redirected_to progress_reports_url
  end
end
