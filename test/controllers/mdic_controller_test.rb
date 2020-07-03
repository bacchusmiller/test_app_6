require 'test_helper'

class MdicControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mdic_new_url
    assert_response :success
  end

  test "should get create" do
    get mdic_create_url
    assert_response :success
  end

  test "should get update" do
    get mdic_update_url
    assert_response :success
  end

  test "should get edit" do
    get mdic_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get mdic_destroy_url
    assert_response :success
  end

  test "should get index" do
    get mdic_index_url
    assert_response :success
  end

  test "should get show" do
    get mdic_show_url
    assert_response :success
  end

end
