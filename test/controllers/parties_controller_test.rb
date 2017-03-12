require 'test_helper'

class PartiesControllerTest < ActionController::TestCase
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post :create, party: { ActivitySector: @party.ActivitySector, AssetManager: @party.AssetManager, BPN_BdPDefault: @party.BPN_BdPDefault, BPN_OverdueCredit: @party.BPN_OverdueCredit, BPN_OverdueCreditBPNOther: @party.BPN_OverdueCreditBPNOther, BPN_OverdueCreditOther: @party.BPN_OverdueCreditOther, BPN_ReturnedCheques: @party.BPN_ReturnedCheques, BalanceSheetDate: @party.BalanceSheetDate, Balcao: @party.Balcao, CodigoVigilanciaEspecial: @party.CodigoVigilanciaEspecial, ContractPortfolio: @party.ContractPortfolio, ContractReference: @party.ContractReference, CountryCode: @party.CountryCode, HoldingPartyReference: @party.HoldingPartyReference, LegalManager: @party.LegalManager, NIF: @party.NIF, NPLTeam: @party.NPLTeam, NPLTeamLeader: @party.NPLTeamLeader, PartyDescription: @party.PartyDescription, PartyGroupReference: @party.PartyGroupReference, PartyReference: @party.PartyReference, PartyType: @party.PartyType, SectorialCode: @party.SectorialCode, TotalGroupExposure: @party.TotalGroupExposure, TotalPartyExposure: @party.TotalPartyExposure, ZipCode: @party.ZipCode }
    end

    assert_redirected_to party_path(assigns(:party))
  end

  test "should show party" do
    get :show, id: @party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @party
    assert_response :success
  end

  test "should update party" do
    patch :update, id: @party, party: { ActivitySector: @party.ActivitySector, AssetManager: @party.AssetManager, BPN_BdPDefault: @party.BPN_BdPDefault, BPN_OverdueCredit: @party.BPN_OverdueCredit, BPN_OverdueCreditBPNOther: @party.BPN_OverdueCreditBPNOther, BPN_OverdueCreditOther: @party.BPN_OverdueCreditOther, BPN_ReturnedCheques: @party.BPN_ReturnedCheques, BalanceSheetDate: @party.BalanceSheetDate, Balcao: @party.Balcao, CodigoVigilanciaEspecial: @party.CodigoVigilanciaEspecial, ContractPortfolio: @party.ContractPortfolio, ContractReference: @party.ContractReference, CountryCode: @party.CountryCode, HoldingPartyReference: @party.HoldingPartyReference, LegalManager: @party.LegalManager, NIF: @party.NIF, NPLTeam: @party.NPLTeam, NPLTeamLeader: @party.NPLTeamLeader, PartyDescription: @party.PartyDescription, PartyGroupReference: @party.PartyGroupReference, PartyReference: @party.PartyReference, PartyType: @party.PartyType, SectorialCode: @party.SectorialCode, TotalGroupExposure: @party.TotalGroupExposure, TotalPartyExposure: @party.TotalPartyExposure, ZipCode: @party.ZipCode }
    assert_redirected_to party_path(assigns(:party))
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete :destroy, id: @party
    end

    assert_redirected_to parties_path
  end
end
