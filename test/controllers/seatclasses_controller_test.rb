require 'test_helper'

class SeatclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seatclass = seatclasses(:one)
  end

  test "should get index" do
    get seatclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_seatclass_url
    assert_response :success
  end

  test "should create seatclass" do
    assert_difference('Seatclass.count') do
      post seatclasses_url, params: { seatclass: { class_name: @seatclass.class_name, food_sertvice: @seatclass.food_sertvice, leg_room: @seatclass.leg_room, price: @seatclass.price, seat_type: @seatclass.seat_type } }
    end

    assert_redirected_to seatclass_url(Seatclass.last)
  end

  test "should show seatclass" do
    get seatclass_url(@seatclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_seatclass_url(@seatclass)
    assert_response :success
  end

  test "should update seatclass" do
    patch seatclass_url(@seatclass), params: { seatclass: { class_name: @seatclass.class_name, food_sertvice: @seatclass.food_sertvice, leg_room: @seatclass.leg_room, price: @seatclass.price, seat_type: @seatclass.seat_type } }
    assert_redirected_to seatclass_url(@seatclass)
  end

  test "should destroy seatclass" do
    assert_difference('Seatclass.count', -1) do
      delete seatclass_url(@seatclass)
    end

    assert_redirected_to seatclasses_url
  end
end
