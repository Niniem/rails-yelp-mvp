require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get review_content_url
    assert_response :success
  end

  test "should get rating" do
    get review_rating_url
    assert_response :success
  end

end
