require 'test_helper'

class ReactOnRailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get react_on_rails_index_url
    assert_response :success
  end

end
