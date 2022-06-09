require "test_helper"

class LsitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lsit = lsits(:one)
  end

  test "should get index" do
    get lsits_url
    assert_response :success
  end

  test "should get new" do
    get new_lsit_url
    assert_response :success
  end

  test "should create lsit" do
    assert_difference("Lsit.count") do
      post lsits_url, params: { lsit: { completed: @lsit.completed, description: @lsit.description } }
    end

    assert_redirected_to lsit_url(Lsit.last)
  end

  test "should show lsit" do
    get lsit_url(@lsit)
    assert_response :success
  end

  test "should get edit" do
    get edit_lsit_url(@lsit)
    assert_response :success
  end

  test "should update lsit" do
    patch lsit_url(@lsit), params: { lsit: { completed: @lsit.completed, description: @lsit.description } }
    assert_redirected_to lsit_url(@lsit)
  end

  test "should destroy lsit" do
    assert_difference("Lsit.count", -1) do
      delete lsit_url(@lsit)
    end

    assert_redirected_to lsits_url
  end
end
