require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "returns a success response for Home page" do
    get jobs_home_url
    assert_response :success
  end

  test "returns a success response for Jobs page" do
    get jobs_new_url
    assert_response :success
  end

  test "returns a success response for New Jobs page" do
    get jobs_create_url
    assert_response :success
  end

  test "returns a success response for Job Search page" do
    get jobs_search_url
    assert_response :success
  end

end
