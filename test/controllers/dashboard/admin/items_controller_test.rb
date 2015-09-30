require 'test_helper'

class Dashboard::Admin::ItemsControllerTest < ActionController::TestCase
  setup do
    @dashboard_admin_item = dashboard_admin_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboard_admin_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dashboard_admin_item" do
    assert_difference('Dashboard::Admin::Item.count') do
      post :create, dashboard_admin_item: {  }
    end

    assert_redirected_to dashboard_admin_item_path(assigns(:dashboard_admin_item))
  end

  test "should show dashboard_admin_item" do
    get :show, id: @dashboard_admin_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dashboard_admin_item
    assert_response :success
  end

  test "should update dashboard_admin_item" do
    patch :update, id: @dashboard_admin_item, dashboard_admin_item: {  }
    assert_redirected_to dashboard_admin_item_path(assigns(:dashboard_admin_item))
  end

  test "should destroy dashboard_admin_item" do
    assert_difference('Dashboard::Admin::Item.count', -1) do
      delete :destroy, id: @dashboard_admin_item
    end

    assert_redirected_to dashboard_admin_items_path
  end
end
