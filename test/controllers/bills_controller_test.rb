require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get bills_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_url
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post bills_url, params: { bill: { amount: @bill.amount, bill_no: @bill.bill_no, date: @bill.date, detail: @bill.detail, le_axis: @bill.le_axis, le_cyl_dist: @bill.le_cyl_dist, le_cyl_nr: @bill.le_cyl_nr, le_sph_dist: @bill.le_sph_dist, le_sph_nr: @bill.le_sph_nr, name: @bill.name, re_axis: @bill.re_axis, re_cyl_dist: @bill.re_cyl_dist, re_cyl_nr: @bill.re_cyl_nr, re_sph_dist: @bill.re_sph_dist, re_sph_nr: @bill.re_sph_nr } }
    end

    assert_redirected_to bill_url(Bill.last)
  end

  test "should show bill" do
    get bill_url(@bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_url(@bill)
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { amount: @bill.amount, bill_no: @bill.bill_no, date: @bill.date, detail: @bill.detail, le_axis: @bill.le_axis, le_cyl_dist: @bill.le_cyl_dist, le_cyl_nr: @bill.le_cyl_nr, le_sph_dist: @bill.le_sph_dist, le_sph_nr: @bill.le_sph_nr, name: @bill.name, re_axis: @bill.re_axis, re_cyl_dist: @bill.re_cyl_dist, re_cyl_nr: @bill.re_cyl_nr, re_sph_dist: @bill.re_sph_dist, re_sph_nr: @bill.re_sph_nr } }
    assert_redirected_to bill_url(@bill)
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete bill_url(@bill)
    end

    assert_redirected_to bills_url
  end
end
