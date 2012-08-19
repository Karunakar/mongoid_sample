require 'test_helper'

class HasinisControllerTest < ActionController::TestCase
  setup do
    @hasini = hasinis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hasinis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hasini" do
    assert_difference('Hasini.count') do
      post :create, hasini: { content: @hasini.content, name: @hasini.name }
    end

    assert_redirected_to hasini_path(assigns(:hasini))
  end

  test "should show hasini" do
    get :show, id: @hasini
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hasini
    assert_response :success
  end

  test "should update hasini" do
    put :update, id: @hasini, hasini: { content: @hasini.content, name: @hasini.name }
    assert_redirected_to hasini_path(assigns(:hasini))
  end

  test "should destroy hasini" do
    assert_difference('Hasini.count', -1) do
      delete :destroy, id: @hasini
    end

    assert_redirected_to hasinis_path
  end
end
