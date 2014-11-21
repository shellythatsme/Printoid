require 'test_helper'

# this is a class
class PagesControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end
end
