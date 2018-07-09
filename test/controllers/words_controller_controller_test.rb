require 'test_helper'

class WordsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get words_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get words_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get words_controller_update_url
    assert_response :success
  end

  test "should get edit" do
    get words_controller_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get words_controller_destroy_url
    assert_response :success
  end

  test "should get index" do
    get words_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get words_controller_show_url
    assert_response :success
  end

end
