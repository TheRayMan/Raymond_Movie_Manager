require 'test_helper'

class VideoformatsControllerTest < ActionController::TestCase
  setup do
    @videoformat = videoformats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videoformats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videoformat" do
    assert_difference('Videoformat.count') do
      post :create, videoformat: { name: @videoformat.name }
    end

    assert_redirected_to videoformat_path(assigns(:videoformat))
  end

  test "should show videoformat" do
    get :show, id: @videoformat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videoformat
    assert_response :success
  end

  test "should update videoformat" do
    patch :update, id: @videoformat, videoformat: { name: @videoformat.name }
    assert_redirected_to videoformat_path(assigns(:videoformat))
  end

  test "should destroy videoformat" do
    assert_difference('Videoformat.count', -1) do
      delete :destroy, id: @videoformat
    end

    assert_redirected_to videoformats_path
  end
end
