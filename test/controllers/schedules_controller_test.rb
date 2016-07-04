require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    @schedule = schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { restaurant_id: @schedule.restaurant_id, time0000: @schedule.time0000, time0015: @schedule.time0015, time0030: @schedule.time0030, time0045: @schedule.time0045, time0100: @schedule.time0100, time0115: @schedule.time0115, time0130: @schedule.time0130, time0145: @schedule.time0145, time0200: @schedule.time0200, time0215: @schedule.time0215, time0230: @schedule.time0230, time0245: @schedule.time0245, time0300: @schedule.time0300, time0315: @schedule.time0315, time0330: @schedule.time0330, time0345: @schedule.time0345, time0400: @schedule.time0400, time0415: @schedule.time0415, time0430: @schedule.time0430, time0445: @schedule.time0445, time0500: @schedule.time0500, time0515: @schedule.time0515, time0530: @schedule.time0530, time0545: @schedule.time0545, time0600: @schedule.time0600, time0615: @schedule.time0615, time0630: @schedule.time0630, time0645: @schedule.time0645, time0700: @schedule.time0700, time0715: @schedule.time0715, time0730: @schedule.time0730, time0745: @schedule.time0745, time0800: @schedule.time0800, time0815: @schedule.time0815, time0830: @schedule.time0830, time0845: @schedule.time0845, time0900: @schedule.time0900, time0915: @schedule.time0915, time0930: @schedule.time0930, time0945: @schedule.time0945, time1000: @schedule.time1000, time1015: @schedule.time1015, time1030: @schedule.time1030, time1045: @schedule.time1045, time1100: @schedule.time1100, time1115: @schedule.time1115, time1130: @schedule.time1130, time1145: @schedule.time1145, time1200: @schedule.time1200, time1215: @schedule.time1215, time1230: @schedule.time1230, time1245: @schedule.time1245, time1300: @schedule.time1300, time1315: @schedule.time1315, time1330: @schedule.time1330, time1345: @schedule.time1345, time1400: @schedule.time1400, time1415: @schedule.time1415, time1430: @schedule.time1430, time1445: @schedule.time1445, time1500: @schedule.time1500, time1515: @schedule.time1515, time1530: @schedule.time1530, time1545: @schedule.time1545, time1600: @schedule.time1600, time1615: @schedule.time1615, time1630: @schedule.time1630, time1645: @schedule.time1645, time1700: @schedule.time1700, time1715: @schedule.time1715, time1730: @schedule.time1730, time1745: @schedule.time1745, time1800: @schedule.time1800, time1815: @schedule.time1815, time1830: @schedule.time1830, time1845: @schedule.time1845, time1900: @schedule.time1900, time1915: @schedule.time1915, time1930: @schedule.time1930, time1945: @schedule.time1945, time2000: @schedule.time2000, time2015: @schedule.time2015, time2030: @schedule.time2030, time2045: @schedule.time2045, time2100: @schedule.time2100, time2115: @schedule.time2115, time2130: @schedule.time2130, time2145: @schedule.time2145, time2200: @schedule.time2200, time2215: @schedule.time2215, time2230: @schedule.time2230, time2245: @schedule.time2245, time2300: @schedule.time2300, time2315: @schedule.time2315, time2330: @schedule.time2330, time2345: @schedule.time2345 }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should show schedule" do
    get :show, id: @schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule
    assert_response :success
  end

  test "should update schedule" do
    patch :update, id: @schedule, schedule: { restaurant_id: @schedule.restaurant_id, time0000: @schedule.time0000, time0015: @schedule.time0015, time0030: @schedule.time0030, time0045: @schedule.time0045, time0100: @schedule.time0100, time0115: @schedule.time0115, time0130: @schedule.time0130, time0145: @schedule.time0145, time0200: @schedule.time0200, time0215: @schedule.time0215, time0230: @schedule.time0230, time0245: @schedule.time0245, time0300: @schedule.time0300, time0315: @schedule.time0315, time0330: @schedule.time0330, time0345: @schedule.time0345, time0400: @schedule.time0400, time0415: @schedule.time0415, time0430: @schedule.time0430, time0445: @schedule.time0445, time0500: @schedule.time0500, time0515: @schedule.time0515, time0530: @schedule.time0530, time0545: @schedule.time0545, time0600: @schedule.time0600, time0615: @schedule.time0615, time0630: @schedule.time0630, time0645: @schedule.time0645, time0700: @schedule.time0700, time0715: @schedule.time0715, time0730: @schedule.time0730, time0745: @schedule.time0745, time0800: @schedule.time0800, time0815: @schedule.time0815, time0830: @schedule.time0830, time0845: @schedule.time0845, time0900: @schedule.time0900, time0915: @schedule.time0915, time0930: @schedule.time0930, time0945: @schedule.time0945, time1000: @schedule.time1000, time1015: @schedule.time1015, time1030: @schedule.time1030, time1045: @schedule.time1045, time1100: @schedule.time1100, time1115: @schedule.time1115, time1130: @schedule.time1130, time1145: @schedule.time1145, time1200: @schedule.time1200, time1215: @schedule.time1215, time1230: @schedule.time1230, time1245: @schedule.time1245, time1300: @schedule.time1300, time1315: @schedule.time1315, time1330: @schedule.time1330, time1345: @schedule.time1345, time1400: @schedule.time1400, time1415: @schedule.time1415, time1430: @schedule.time1430, time1445: @schedule.time1445, time1500: @schedule.time1500, time1515: @schedule.time1515, time1530: @schedule.time1530, time1545: @schedule.time1545, time1600: @schedule.time1600, time1615: @schedule.time1615, time1630: @schedule.time1630, time1645: @schedule.time1645, time1700: @schedule.time1700, time1715: @schedule.time1715, time1730: @schedule.time1730, time1745: @schedule.time1745, time1800: @schedule.time1800, time1815: @schedule.time1815, time1830: @schedule.time1830, time1845: @schedule.time1845, time1900: @schedule.time1900, time1915: @schedule.time1915, time1930: @schedule.time1930, time1945: @schedule.time1945, time2000: @schedule.time2000, time2015: @schedule.time2015, time2030: @schedule.time2030, time2045: @schedule.time2045, time2100: @schedule.time2100, time2115: @schedule.time2115, time2130: @schedule.time2130, time2145: @schedule.time2145, time2200: @schedule.time2200, time2215: @schedule.time2215, time2230: @schedule.time2230, time2245: @schedule.time2245, time2300: @schedule.time2300, time2315: @schedule.time2315, time2330: @schedule.time2330, time2345: @schedule.time2345 }
    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end

    assert_redirected_to schedules_path
  end
end
