require 'test_helper'

module BcmsKcfinder
  class BrowseControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
