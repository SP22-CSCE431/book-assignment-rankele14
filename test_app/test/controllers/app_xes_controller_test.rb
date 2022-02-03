require "test_helper"

class AppXesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_x = app_xes(:one)
  end

  test "should get index" do
    get app_xes_url
    assert_response :success
  end

  test "should get new" do
    get new_app_x_url
    assert_response :success
  end

  test "should create app_x" do
    assert_difference('AppX.count') do
      post app_xes_url, params: { app_x: { published: @app_x.published, title: @app_x.title } }
    end

    assert_redirected_to app_x_url(AppX.last)
  end

  test "should show app_x" do
    get app_x_url(@app_x)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_x_url(@app_x)
    assert_response :success
  end

  test "should update app_x" do
    patch app_x_url(@app_x), params: { app_x: { published: @app_x.published, title: @app_x.title } }
    assert_redirected_to app_x_url(@app_x)
  end

  test "should destroy app_x" do
    assert_difference('AppX.count', -1) do
      delete app_x_url(@app_x)
    end

    assert_redirected_to app_xes_url
  end
end
