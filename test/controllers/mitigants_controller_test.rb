require 'test_helper'

class MitigantsControllerTest < ActionController::TestCase
  setup do
    @mitigant = mitigants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mitigants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mitigant" do
    assert_difference('Mitigant.count') do
      post :create, mitigant: { BalanceSheetDate: @mitigant.BalanceSheetDate, Componente: @mitigant.Componente, ContractReference: @mitigant.ContractReference, HoldingPartyReference: @mitigant.HoldingPartyReference, MitigantBalance: @mitigant.MitigantBalance, MitigantReference: @mitigant.MitigantReference, MitigantType: @mitigant.MitigantType }
    end

    assert_redirected_to mitigant_path(assigns(:mitigant))
  end

  test "should show mitigant" do
    get :show, id: @mitigant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mitigant
    assert_response :success
  end

  test "should update mitigant" do
    patch :update, id: @mitigant, mitigant: { BalanceSheetDate: @mitigant.BalanceSheetDate, Componente: @mitigant.Componente, ContractReference: @mitigant.ContractReference, HoldingPartyReference: @mitigant.HoldingPartyReference, MitigantBalance: @mitigant.MitigantBalance, MitigantReference: @mitigant.MitigantReference, MitigantType: @mitigant.MitigantType }
    assert_redirected_to mitigant_path(assigns(:mitigant))
  end

  test "should destroy mitigant" do
    assert_difference('Mitigant.count', -1) do
      delete :destroy, id: @mitigant
    end

    assert_redirected_to mitigants_path
  end
end
