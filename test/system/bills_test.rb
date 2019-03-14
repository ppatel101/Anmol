require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "creating a Bill" do
    visit bills_url
    click_on "New Bill"

    fill_in "Amount", with: @bill.amount
    fill_in "Bill no", with: @bill.bill_no
    fill_in "Date", with: @bill.date
    fill_in "Detail", with: @bill.detail
    fill_in "Le axis", with: @bill.le_axis
    fill_in "Le cyl dist", with: @bill.le_cyl_dist
    fill_in "Le cyl nr", with: @bill.le_cyl_nr
    fill_in "Le sph dist", with: @bill.le_sph_dist
    fill_in "Le sph nr", with: @bill.le_sph_nr
    fill_in "Name", with: @bill.name
    fill_in "Re axis", with: @bill.re_axis
    fill_in "Re cyl dist", with: @bill.re_cyl_dist
    fill_in "Re cyl nr", with: @bill.re_cyl_nr
    fill_in "Re sph dist", with: @bill.re_sph_dist
    fill_in "Re sph nr", with: @bill.re_sph_nr
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "updating a Bill" do
    visit bills_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @bill.amount
    fill_in "Bill no", with: @bill.bill_no
    fill_in "Date", with: @bill.date
    fill_in "Detail", with: @bill.detail
    fill_in "Le axis", with: @bill.le_axis
    fill_in "Le cyl dist", with: @bill.le_cyl_dist
    fill_in "Le cyl nr", with: @bill.le_cyl_nr
    fill_in "Le sph dist", with: @bill.le_sph_dist
    fill_in "Le sph nr", with: @bill.le_sph_nr
    fill_in "Name", with: @bill.name
    fill_in "Re axis", with: @bill.re_axis
    fill_in "Re cyl dist", with: @bill.re_cyl_dist
    fill_in "Re cyl nr", with: @bill.re_cyl_nr
    fill_in "Re sph dist", with: @bill.re_sph_dist
    fill_in "Re sph nr", with: @bill.re_sph_nr
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill" do
    visit bills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill was successfully destroyed"
  end
end
