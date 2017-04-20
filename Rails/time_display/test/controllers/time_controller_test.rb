require 'test_helper'

class TimeControllerTest < ActionController::TestCase
  test "should get datetime:datetime" do
    get :datetime:datetime
    assert_response :success
  end

end
