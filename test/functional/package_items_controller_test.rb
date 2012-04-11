require 'test_helper'

class PackageItemsControllerTest < ActionController::TestCase
  setup do
    @package_item = package_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_item" do
    assert_difference('PackageItem.count') do
      post :create, package_item: @package_item.attributes
    end

    assert_redirected_to package_item_path(assigns(:package_item))
  end

  test "should show package_item" do
    get :show, id: @package_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_item
    assert_response :success
  end

  test "should update package_item" do
    put :update, id: @package_item, package_item: @package_item.attributes
    assert_redirected_to package_item_path(assigns(:package_item))
  end

  test "should destroy package_item" do
    assert_difference('PackageItem.count', -1) do
      delete :destroy, id: @package_item
    end

    assert_redirected_to package_items_path
  end
end
