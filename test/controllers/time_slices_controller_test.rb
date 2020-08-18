require 'test_helper'

class TimeSlicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_slice = time_slices(:one)
  end

  test "should get index" do
    get time_slices_url
    assert_response :success
  end

  test "should get new" do
    get new_time_slice_url
    assert_response :success
  end

  test "should create time_slice" do
    assert_difference('TimeSlice.count') do
      post time_slices_url, params: { time_slice: { down: @time_slice.down, up: @time_slice.up } }
    end

    assert_redirected_to time_slice_url(TimeSlice.last)
  end

  test "should show time_slice" do
    get time_slice_url(@time_slice)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_slice_url(@time_slice)
    assert_response :success
  end

  test "should update time_slice" do
    patch time_slice_url(@time_slice), params: { time_slice: { down: @time_slice.down, up: @time_slice.up } }
    assert_redirected_to time_slice_url(@time_slice)
  end

  test "should destroy time_slice" do
    assert_difference('TimeSlice.count', -1) do
      delete time_slice_url(@time_slice)
    end

    assert_redirected_to time_slices_url
  end
end
