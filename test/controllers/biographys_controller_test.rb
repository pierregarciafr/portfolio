require 'test_helper'

class BiographysControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get biographys_new_url
    assert_response :success
  end

  test "should get create" do
    get biographys_create_url
    assert_response :success
  end

  test "should get edit" do
    get biographys_edit_url
    assert_response :success
  end

  test "should get update" do
    get biographys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get biographys_destroy_url
    assert_response :success
  end

end
