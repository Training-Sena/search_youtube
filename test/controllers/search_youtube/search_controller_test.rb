require 'test_helper'

module SearchYoutube
  class SearchControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get search_index_url
      assert_response :success
    end

  end
end
