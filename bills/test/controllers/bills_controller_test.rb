require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get bills_path
  #   assert_response :success
  # end

  test "should get bill" do
    one_bill
    assert_equal 50, Bill.last.amount
  end

  test "should get bill with post route" do
    one_bill
    post bills_path, params: {bill: {bill_type: "Other", amount: 50, user_id: User.last.id}}
    assert_equal "Other", Bill.last.bill_type
  end

  test "should get bill with get bill route" do
    one_bill
    get bill_path(Bill.last.id)
    assert_equal "Other", Bill.last
  end

end
