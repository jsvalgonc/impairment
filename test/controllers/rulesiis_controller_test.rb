require 'test_helper'

class RulesiisControllerTest < ActionController::TestCase
  setup do
    @rulesii = rulesiis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rulesiis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rulesii" do
    assert_difference('Rulesii.count') do
      post :create, rulesii: { RuleType: @rulesii.RuleType, number: @rulesii.number, priority: @rulesii.priority, rule: @rulesii.rule }
    end

    assert_redirected_to rulesii_path(assigns(:rulesii))
  end

  test "should show rulesii" do
    get :show, id: @rulesii
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rulesii
    assert_response :success
  end

  test "should update rulesii" do
    patch :update, id: @rulesii, rulesii: { RuleType: @rulesii.RuleType, number: @rulesii.number, priority: @rulesii.priority, rule: @rulesii.rule }
    assert_redirected_to rulesii_path(assigns(:rulesii))
  end

  test "should destroy rulesii" do
    assert_difference('Rulesii.count', -1) do
      delete :destroy, id: @rulesii
    end

    assert_redirected_to rulesiis_path
  end
end
