require 'test_helper'

class AcontractsControllerTest < ActionController::TestCase
  setup do
    @acontract = acontracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acontracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acontract" do
    assert_difference('Acontract.count') do
      post :create, acontract: { AccountNature: @acontract.AccountNature, AccountType: @acontract.AccountType, AccruedInterestAtBSD: @acontract.AccruedInterestAtBSD, BPN_AccRef10: @acontract.BPN_AccRef10, BPN_AccRef11: @acontract.BPN_AccRef11, BPN_AccRef12_UndrawnAmount: @acontract.BPN_AccRef12_UndrawnAmount, BPN_AccRef13: @acontract.BPN_AccRef13, BPN_AccRef1: @acontract.BPN_AccRef1, BPN_AccRef2: @acontract.BPN_AccRef2, BPN_AccRef3: @acontract.BPN_AccRef3, BPN_AccRef4_AccruedInterestAtBSD: @acontract.BPN_AccRef4_AccruedInterestAtBSD, BPN_AccRef5: @acontract.BPN_AccRef5, BPN_AccRef6: @acontract.BPN_AccRef6, BPN_AccRef7: @acontract.BPN_AccRef7, BPN_AccRef8: @acontract.BPN_AccRef8, BPN_AccRef9: @acontract.BPN_AccRef9, BPN_Balcao: @acontract.BPN_Balcao, BPN_PercentagemCartao: @acontract.BPN_PercentagemCartao, BPN_Val10_PrvCCD: @acontract.BPN_Val10_PrvCCD, BPN_Val11_PrvRP: @acontract.BPN_Val11_PrvRP, BPN_Val13_GarPre: @acontract.BPN_Val13_GarPre, BPN_Val1_CapVin: @acontract.BPN_Val1_CapVin, BPN_Val2_CapVen: @acontract.BPN_Val2_CapVen, BPN_Val3_CapAbt: @acontract.BPN_Val3_CapAbt, BPN_Val5_JrsVen: @acontract.BPN_Val5_JrsVen, BPN_Val6_JrsAnl: @acontract.BPN_Val6_JrsAnl, BPN_Val7_PrvRGC: @acontract.BPN_Val7_PrvRGC, BPN_Val8_PrvEco: @acontract.BPN_Val8_PrvEco, BPN_Val9_PrvCrV: @acontract.BPN_Val9_PrvCrV, BPN_Val_Fee: @acontract.BPN_Val_Fee, Balance: @acontract.Balance, BalanceSheetDate: @acontract.BalanceSheetDate, Classe: @acontract.Classe, ContractPortfolio: @acontract.ContractPortfolio, ContractReference: @acontract.ContractReference, Currency: @acontract.Currency, CurrentDelay: @acontract.CurrentDelay, DrawnAmount: @acontract.DrawnAmount, HoldingPartyReference: @acontract.HoldingPartyReference, ISMitigant: @acontract.ISMitigant, IrrecoverableDate: @acontract.IrrecoverableDate, IsMortgage: @acontract.IsMortgage, LossClass: @acontract.LossClass, MaturityDate: @acontract.MaturityDate, OriginDate: @acontract.OriginDate, PartyReference: @acontract.PartyReference, Principal: @acontract.Principal, ProductClass: @acontract.ProductClass, ProductComponent: @acontract.ProductComponent, TIR: @acontract.TIR, TaxaNominal: @acontract.TaxaNominal, TipoCliente: @acontract.TipoCliente, TipoCredito: @acontract.TipoCredito, TipoGarantia: @acontract.TipoGarantia, UndrawnAmount: @acontract.UndrawnAmount, party_id: @acontract.party_id }
    end

    assert_redirected_to acontract_path(assigns(:acontract))
  end

  test "should show acontract" do
    get :show, id: @acontract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acontract
    assert_response :success
  end

  test "should update acontract" do
    patch :update, id: @acontract, acontract: { AccountNature: @acontract.AccountNature, AccountType: @acontract.AccountType, AccruedInterestAtBSD: @acontract.AccruedInterestAtBSD, BPN_AccRef10: @acontract.BPN_AccRef10, BPN_AccRef11: @acontract.BPN_AccRef11, BPN_AccRef12_UndrawnAmount: @acontract.BPN_AccRef12_UndrawnAmount, BPN_AccRef13: @acontract.BPN_AccRef13, BPN_AccRef1: @acontract.BPN_AccRef1, BPN_AccRef2: @acontract.BPN_AccRef2, BPN_AccRef3: @acontract.BPN_AccRef3, BPN_AccRef4_AccruedInterestAtBSD: @acontract.BPN_AccRef4_AccruedInterestAtBSD, BPN_AccRef5: @acontract.BPN_AccRef5, BPN_AccRef6: @acontract.BPN_AccRef6, BPN_AccRef7: @acontract.BPN_AccRef7, BPN_AccRef8: @acontract.BPN_AccRef8, BPN_AccRef9: @acontract.BPN_AccRef9, BPN_Balcao: @acontract.BPN_Balcao, BPN_PercentagemCartao: @acontract.BPN_PercentagemCartao, BPN_Val10_PrvCCD: @acontract.BPN_Val10_PrvCCD, BPN_Val11_PrvRP: @acontract.BPN_Val11_PrvRP, BPN_Val13_GarPre: @acontract.BPN_Val13_GarPre, BPN_Val1_CapVin: @acontract.BPN_Val1_CapVin, BPN_Val2_CapVen: @acontract.BPN_Val2_CapVen, BPN_Val3_CapAbt: @acontract.BPN_Val3_CapAbt, BPN_Val5_JrsVen: @acontract.BPN_Val5_JrsVen, BPN_Val6_JrsAnl: @acontract.BPN_Val6_JrsAnl, BPN_Val7_PrvRGC: @acontract.BPN_Val7_PrvRGC, BPN_Val8_PrvEco: @acontract.BPN_Val8_PrvEco, BPN_Val9_PrvCrV: @acontract.BPN_Val9_PrvCrV, BPN_Val_Fee: @acontract.BPN_Val_Fee, Balance: @acontract.Balance, BalanceSheetDate: @acontract.BalanceSheetDate, Classe: @acontract.Classe, ContractPortfolio: @acontract.ContractPortfolio, ContractReference: @acontract.ContractReference, Currency: @acontract.Currency, CurrentDelay: @acontract.CurrentDelay, DrawnAmount: @acontract.DrawnAmount, HoldingPartyReference: @acontract.HoldingPartyReference, ISMitigant: @acontract.ISMitigant, IrrecoverableDate: @acontract.IrrecoverableDate, IsMortgage: @acontract.IsMortgage, LossClass: @acontract.LossClass, MaturityDate: @acontract.MaturityDate, OriginDate: @acontract.OriginDate, PartyReference: @acontract.PartyReference, Principal: @acontract.Principal, ProductClass: @acontract.ProductClass, ProductComponent: @acontract.ProductComponent, TIR: @acontract.TIR, TaxaNominal: @acontract.TaxaNominal, TipoCliente: @acontract.TipoCliente, TipoCredito: @acontract.TipoCredito, TipoGarantia: @acontract.TipoGarantia, UndrawnAmount: @acontract.UndrawnAmount, party_id: @acontract.party_id }
    assert_redirected_to acontract_path(assigns(:acontract))
  end

  test "should destroy acontract" do
    assert_difference('Acontract.count', -1) do
      delete :destroy, id: @acontract
    end

    assert_redirected_to acontracts_path
  end
end
