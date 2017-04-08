require 'test_helper'

class AmitigantsControllerTest < ActionController::TestCase
  setup do
    @amitigant = amitigants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amitigants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amitigant" do
    assert_difference('Amitigant.count') do
      post :create, amitigant: { BalanceSheetDate: @amitigant.BalanceSheetDate, Componente: @amitigant.Componente, ContractReference: @amitigant.ContractReference, HoldingPartyReference: @amitigant.HoldingPartyReference, MitigantBalance: @amitigant.MitigantBalance, MitigantReference: @amitigant.MitigantReference, MitigantType: @amitigant.MitigantType, acontract_id: @amitigant.acontract_id }
    end

    assert_redirected_to amitigant_path(assigns(:amitigant))
  end

  test "should show amitigant" do
    get :show, id: @amitigant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amitigant
    assert_response :success
  end

  test "should update amitigant" do
    patch :update, id: @amitigant, amitigant: { BalanceSheetDate: @amitigant.BalanceSheetDate, Componente: @amitigant.Componente, ContractReference: @amitigant.ContractReference, HoldingPartyReference: @amitigant.HoldingPartyReference, MitigantBalance: @amitigant.MitigantBalance, MitigantReference: @amitigant.MitigantReference, MitigantType: @amitigant.MitigantType, acontract_id: @amitigant.acontract_id }
    assert_redirected_to amitigant_path(assigns(:amitigant))
  end

  test "should destroy amitigant" do
    assert_difference('Amitigant.count', -1) do
      delete :destroy, id: @amitigant
    end

    assert_redirected_to amitigants_path
  end
end
