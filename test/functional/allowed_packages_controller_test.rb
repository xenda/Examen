require 'test_helper'

class AllowedPackagesControllerTest < ActionController::TestCase
  setup do
    @allowed_package = allowed_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allowed_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allowed_package" do
    assert_difference('AllowedPackage.count') do
      post :create, allowed_package: @allowed_package.attributes
    end

    assert_redirected_to allowed_package_path(assigns(:allowed_package))
  end

  test "should show allowed_package" do
    get :show, id: @allowed_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allowed_package
    assert_response :success
  end

  test "should update allowed_package" do
    put :update, id: @allowed_package, allowed_package: @allowed_package.attributes
    assert_redirected_to allowed_package_path(assigns(:allowed_package))
  end

  test "should destroy allowed_package" do
    assert_difference('AllowedPackage.count', -1) do
      delete :destroy, id: @allowed_package
    end

    assert_redirected_to allowed_packages_path
  end
end
