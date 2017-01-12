require 'test_helper'

class PaymentRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_record = payment_records(:one)
  end

  test "should get index" do
    get payment_records_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_record_url
    assert_response :success
  end

  test "should create payment_record" do
    assert_difference('PaymentRecord.count') do
      post payment_records_url, params: { payment_record: { child_sponsorship_id: @payment_record.child_sponsorship_id, comments: @payment_record.comments, created_by: @payment_record.created_by, created_on: @payment_record.created_on, donor_name: @payment_record.donor_name, last_updated_by: @payment_record.last_updated_by, last_updated_on: @payment_record.last_updated_on, receipt: @payment_record.receipt, received_on: @payment_record.received_on, status: @payment_record.status } }
    end

    assert_redirected_to payment_record_url(PaymentRecord.last)
  end

  test "should show payment_record" do
    get payment_record_url(@payment_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_record_url(@payment_record)
    assert_response :success
  end

  test "should update payment_record" do
    patch payment_record_url(@payment_record), params: { payment_record: { child_sponsorship_id: @payment_record.child_sponsorship_id, comments: @payment_record.comments, created_by: @payment_record.created_by, created_on: @payment_record.created_on, donor_name: @payment_record.donor_name, last_updated_by: @payment_record.last_updated_by, last_updated_on: @payment_record.last_updated_on, receipt: @payment_record.receipt, received_on: @payment_record.received_on, status: @payment_record.status } }
    assert_redirected_to payment_record_url(@payment_record)
  end

  test "should destroy payment_record" do
    assert_difference('PaymentRecord.count', -1) do
      delete payment_record_url(@payment_record)
    end

    assert_redirected_to payment_records_url
  end
end
