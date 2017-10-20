require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get jobs_home_url
    assert_response :success
  end

  test "should get new" do
    get jobs_new_url
    assert_response :success
  end

  test "should get create" do
    get jobs_create_url
    assert_response :success
  end

  test "should get search" do
    get jobs_search_url
    assert_response :success
  end

end
