require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { AccountNature: @contract.AccountNature, AccountType: @contract.AccountType, AccruedInterestAtBSD: @contract.AccruedInterestAtBSD, BPN_AccRef10: @contract.BPN_AccRef10, BPN_AccRef11: @contract.BPN_AccRef11, BPN_AccRef12_UndrawnAmount: @contract.BPN_AccRef12_UndrawnAmount, BPN_AccRef13: @contract.BPN_AccRef13, BPN_AccRef1: @contract.BPN_AccRef1, BPN_AccRef2: @contract.BPN_AccRef2, BPN_AccRef3: @contract.BPN_AccRef3, BPN_AccRef4_AccruedInterestAtBSD: @contract.BPN_AccRef4_AccruedInterestAtBSD, BPN_AccRef5: @contract.BPN_AccRef5, BPN_AccRef6: @contract.BPN_AccRef6, BPN_AccRef7: @contract.BPN_AccRef7, BPN_AccRef8: @contract.BPN_AccRef8, BPN_AccRef9: @contract.BPN_AccRef9, BPN_Balcao: @contract.BPN_Balcao, BPN_PercentagemCartao: @contract.BPN_PercentagemCartao, BPN_Val10_PrvCCD: @contract.BPN_Val10_PrvCCD, BPN_Val11_PrvRP: @contract.BPN_Val11_PrvRP, BPN_Val13_GarPre: @contract.BPN_Val13_GarPre, BPN_Val1_CapVin: @contract.BPN_Val1_CapVin, BPN_Val2_CapVen: @contract.BPN_Val2_CapVen, BPN_Val3_CapAbt: @contract.BPN_Val3_CapAbt, BPN_Val5_JrsVen: @contract.BPN_Val5_JrsVen, BPN_Val6_JrsAnl: @contract.BPN_Val6_JrsAnl, BPN_Val7_PrvRGC: @contract.BPN_Val7_PrvRGC, BPN_Val8_PrvEco: @contract.BPN_Val8_PrvEco, BPN_Val9_PrvCrV: @contract.BPN_Val9_PrvCrV, BPN_Val_Fee: @contract.BPN_Val_Fee, Balance: @contract.Balance, BalanceSheetDate: @contract.BalanceSheetDate, Classe: @contract.Classe, ContractPortfolio: @contract.ContractPortfolio, ContractReference: @contract.ContractReference, Currency: @contract.Currency, CurrentDelay: @contract.CurrentDelay, DrawnAmount: @contract.DrawnAmount, HoldingPartyReference: @contract.HoldingPartyReference, ISMitigant: @contract.ISMitigant, IrrecoverableDate: @contract.IrrecoverableDate, IsMortgage: @contract.IsMortgage, LossClass: @contract.LossClass, MaturityDate: @contract.MaturityDate, OriginDate: @contract.OriginDate, PartyReference: @contract.PartyReference, Principal: @contract.Principal, ProductClass: @contract.ProductClass, ProductComponent: @contract.ProductComponent, TIR: @contract.TIR, TaxaNominal: @contract.TaxaNominal, TipoCliente: @contract.TipoCliente, TipoCredito: @contract.TipoCredito, TipoGarantia: @contract.TipoGarantia, UndrawnAmount: @contract.UndrawnAmount }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { AccountNature: @contract.AccountNature, AccountType: @contract.AccountType, AccruedInterestAtBSD: @contract.AccruedInterestAtBSD, BPN_AccRef10: @contract.BPN_AccRef10, BPN_AccRef11: @contract.BPN_AccRef11, BPN_AccRef12_UndrawnAmount: @contract.BPN_AccRef12_UndrawnAmount, BPN_AccRef13: @contract.BPN_AccRef13, BPN_AccRef1: @contract.BPN_AccRef1, BPN_AccRef2: @contract.BPN_AccRef2, BPN_AccRef3: @contract.BPN_AccRef3, BPN_AccRef4_AccruedInterestAtBSD: @contract.BPN_AccRef4_AccruedInterestAtBSD, BPN_AccRef5: @contract.BPN_AccRef5, BPN_AccRef6: @contract.BPN_AccRef6, BPN_AccRef7: @contract.BPN_AccRef7, BPN_AccRef8: @contract.BPN_AccRef8, BPN_AccRef9: @contract.BPN_AccRef9, BPN_Balcao: @contract.BPN_Balcao, BPN_PercentagemCartao: @contract.BPN_PercentagemCartao, BPN_Val10_PrvCCD: @contract.BPN_Val10_PrvCCD, BPN_Val11_PrvRP: @contract.BPN_Val11_PrvRP, BPN_Val13_GarPre: @contract.BPN_Val13_GarPre, BPN_Val1_CapVin: @contract.BPN_Val1_CapVin, BPN_Val2_CapVen: @contract.BPN_Val2_CapVen, BPN_Val3_CapAbt: @contract.BPN_Val3_CapAbt, BPN_Val5_JrsVen: @contract.BPN_Val5_JrsVen, BPN_Val6_JrsAnl: @contract.BPN_Val6_JrsAnl, BPN_Val7_PrvRGC: @contract.BPN_Val7_PrvRGC, BPN_Val8_PrvEco: @contract.BPN_Val8_PrvEco, BPN_Val9_PrvCrV: @contract.BPN_Val9_PrvCrV, BPN_Val_Fee: @contract.BPN_Val_Fee, Balance: @contract.Balance, BalanceSheetDate: @contract.BalanceSheetDate, Classe: @contract.Classe, ContractPortfolio: @contract.ContractPortfolio, ContractReference: @contract.ContractReference, Currency: @contract.Currency, CurrentDelay: @contract.CurrentDelay, DrawnAmount: @contract.DrawnAmount, HoldingPartyReference: @contract.HoldingPartyReference, ISMitigant: @contract.ISMitigant, IrrecoverableDate: @contract.IrrecoverableDate, IsMortgage: @contract.IsMortgage, LossClass: @contract.LossClass, MaturityDate: @contract.MaturityDate, OriginDate: @contract.OriginDate, PartyReference: @contract.PartyReference, Principal: @contract.Principal, ProductClass: @contract.ProductClass, ProductComponent: @contract.ProductComponent, TIR: @contract.TIR, TaxaNominal: @contract.TaxaNominal, TipoCliente: @contract.TipoCliente, TipoCredito: @contract.TipoCredito, TipoGarantia: @contract.TipoGarantia, UndrawnAmount: @contract.UndrawnAmount }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
