require "application_system_test_case"

class SeatclassesTest < ApplicationSystemTestCase
  setup do
    @seatclass = seatclasses(:one)
  end

  test "visiting the index" do
    visit seatclasses_url
    assert_selector "h1", text: "Seatclasses"
  end

  test "creating a Seatclass" do
    visit seatclasses_url
    click_on "New Seatclass"

    fill_in "Class Name", with: @seatclass.class_name
    fill_in "Food Sertvice", with: @seatclass.food_sertvice
    fill_in "Leg Room", with: @seatclass.leg_room
    fill_in "Price", with: @seatclass.price
    fill_in "Seat Type", with: @seatclass.seat_type
    click_on "Create Seatclass"

    assert_text "Seatclass was successfully created"
    click_on "Back"
  end

  test "updating a Seatclass" do
    visit seatclasses_url
    click_on "Edit", match: :first

    fill_in "Class Name", with: @seatclass.class_name
    fill_in "Food Sertvice", with: @seatclass.food_sertvice
    fill_in "Leg Room", with: @seatclass.leg_room
    fill_in "Price", with: @seatclass.price
    fill_in "Seat Type", with: @seatclass.seat_type
    click_on "Update Seatclass"

    assert_text "Seatclass was successfully updated"
    click_on "Back"
  end

  test "destroying a Seatclass" do
    visit seatclasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seatclass was successfully destroyed"
  end
end
