require 'test_helper'

class ApartiesControllerTest < ActionController::TestCase
  setup do
    @aparty = aparties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aparties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aparty" do
    assert_difference('Aparty.count') do
      post :create, aparty: { ActivitySector: @aparty.ActivitySector, AssetManager: @aparty.AssetManager, BPN_BdPDefault: @aparty.BPN_BdPDefault, BPN_OverdueCredit: @aparty.BPN_OverdueCredit, BPN_OverdueCreditBPNOther: @aparty.BPN_OverdueCreditBPNOther, BPN_OverdueCreditOther: @aparty.BPN_OverdueCreditOther, BPN_ReturnedCheques: @aparty.BPN_ReturnedCheques, BalanceSheetDate: @aparty.BalanceSheetDate, Balcao: @aparty.Balcao, CodigoVigilanciaEspecial: @aparty.CodigoVigilanciaEspecial, CountryCode: @aparty.CountryCode, HoldingPartyReference: @aparty.HoldingPartyReference, LegalManager: @aparty.LegalManager, NIF: @aparty.NIF, NPLTeam: @aparty.NPLTeam, NPLTeamLeader: @aparty.NPLTeamLeader, PartyDescription: @aparty.PartyDescription, PartyGroupReference: @aparty.PartyGroupReference, PartyReference: @aparty.PartyReference, PartyType: @aparty.PartyType, SectorialCode: @aparty.SectorialCode, TotalGroupExposure: @aparty.TotalGroupExposure, TotalPartyExposure: @aparty.TotalPartyExposure, ZipCode: @aparty.ZipCode }
    end

    assert_redirected_to aparty_path(assigns(:aparty))
  end

  test "should show aparty" do
    get :show, id: @aparty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aparty
    assert_response :success
  end

  test "should update aparty" do
    patch :update, id: @aparty, aparty: { ActivitySector: @aparty.ActivitySector, AssetManager: @aparty.AssetManager, BPN_BdPDefault: @aparty.BPN_BdPDefault, BPN_OverdueCredit: @aparty.BPN_OverdueCredit, BPN_OverdueCreditBPNOther: @aparty.BPN_OverdueCreditBPNOther, BPN_OverdueCreditOther: @aparty.BPN_OverdueCreditOther, BPN_ReturnedCheques: @aparty.BPN_ReturnedCheques, BalanceSheetDate: @aparty.BalanceSheetDate, Balcao: @aparty.Balcao, CodigoVigilanciaEspecial: @aparty.CodigoVigilanciaEspecial, CountryCode: @aparty.CountryCode, HoldingPartyReference: @aparty.HoldingPartyReference, LegalManager: @aparty.LegalManager, NIF: @aparty.NIF, NPLTeam: @aparty.NPLTeam, NPLTeamLeader: @aparty.NPLTeamLeader, PartyDescription: @aparty.PartyDescription, PartyGroupReference: @aparty.PartyGroupReference, PartyReference: @aparty.PartyReference, PartyType: @aparty.PartyType, SectorialCode: @aparty.SectorialCode, TotalGroupExposure: @aparty.TotalGroupExposure, TotalPartyExposure: @aparty.TotalPartyExposure, ZipCode: @aparty.ZipCode }
    assert_redirected_to aparty_path(assigns(:aparty))
  end

  test "should destroy aparty" do
    assert_difference('Aparty.count', -1) do
      delete :destroy, id: @aparty
    end

    assert_redirected_to aparties_path
  end
end
