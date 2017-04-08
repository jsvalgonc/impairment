class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:BalanceSheetDate, :ContractPortfolio, :ContractReference, :HoldingPartyReference, :BPN_Balcao, :PartyReference, :Classe, :ProductClass, :ProductComponent, :AccountNature, :AccountType, :OriginDate, :MaturityDate, :IrrecoverableDate, :Currency, :Balance, :DrawnAmount, :UndrawnAmount, :Principal, :AccruedInterestAtBSD, :LossClass, :TaxaNominal, :TIR, :TipoCredito, :TipoGarantia, :TipoCliente, :CurrentDelay, :ISMitigant, :BPN_PercentagemCartao, :BPN_Val_Fee, :IsMortgage, :BPN_Val1_CapVin, :BPN_Val2_CapVen, :BPN_Val3_CapAbt, :BPN_Val5_JrsVen, :BPN_Val6_JrsAnl, :BPN_Val7_PrvRGC, :BPN_Val8_PrvEco, :BPN_Val9_PrvCrV, :BPN_Val10_PrvCCD, :BPN_Val11_PrvRP, :BPN_Val13_GarPre, :BPN_AccRef1, :BPN_AccRef2, :BPN_AccRef3, :BPN_AccRef4_AccruedInterestAtBSD, :BPN_AccRef5, :BPN_AccRef6, :BPN_AccRef7, :BPN_AccRef8, :BPN_AccRef9, :BPN_AccRef10, :BPN_AccRef11, :BPN_AccRef12_UndrawnAmount, :BPN_AccRef13)
    end
end
