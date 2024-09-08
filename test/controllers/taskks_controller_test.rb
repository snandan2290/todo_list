require "test_helper"

class TaskksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taskk = taskks(:one)
  end

  test "should get index" do
    get taskks_url
    assert_response :success
  end

  test "should get new" do
    get new_taskk_url
    assert_response :success
  end

  test "should create taskk" do
    assert_difference("Taskk.count") do
      post taskks_url, params: { taskk: { status: @taskk.status } }
    end

    assert_redirected_to taskk_url(Taskk.last)
  end

  test "should show taskk" do
    get taskk_url(@taskk)
    assert_response :success
  end

  test "should get edit" do
    get edit_taskk_url(@taskk)
    assert_response :success
  end

  test "should update taskk" do
    patch taskk_url(@taskk), params: { taskk: { status: @taskk.status } }
    assert_redirected_to taskk_url(@taskk)
  end

  test "should destroy taskk" do
    assert_difference("Taskk.count", -1) do
      delete taskk_url(@taskk)
    end

    assert_redirected_to taskks_url
  end
end
