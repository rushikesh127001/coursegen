require 'test_helper'

class Course::StepsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get course_steps_controller_show_url
    assert_response :success
  end

  test "should get update" do
    get course_steps_controller_update_url
    assert_response :success
  end

end
