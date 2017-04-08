class AcontractsController < ApplicationController
  before_action :set_acontract, only: [:show, :edit, :update, :destroy]

  # GET /acontracts
  # GET /acontracts.json
  def index
    @acontracts = Acontract.all
  end

  # GET /acontracts/1
  # GET /acontracts/1.json
  def show
  end

  # GET /acontracts/new
  def new
    @acontract = Acontract.new
  end

  # GET /acontracts/1/edit
  def edit
  end

  # POST /acontracts
  # POST /acontracts.json
  def create
    @acontract = Acontract.new(acontract_params)

    respond_to do |format|
      if @acontract.save
        format.html { redirect_to @acontract, notice: 'Acontract was successfully created.' }
        format.json { render :show, status: :created, location: @acontract }
      else
        format.html { render :new }
        format.json { render json: @acontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acontracts/1
  # PATCH/PUT /acontracts/1.json
  def update
    respond_to do |format|
      if @acontract.update(acontract_params)
        format.html { redirect_to @acontract, notice: 'Acontract was successfully updated.' }
        format.json { render :show, status: :ok, location: @acontract }
      else
        format.html { render :edit }
        format.json { render json: @acontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acontracts/1
  # DELETE /acontracts/1.json
  def destroy
    @acontract.destroy
    respond_to do |format|
      format.html { redirect_to acontracts_url, notice: 'Acontract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acontract
      @acontract = Acontract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acontract_params
      params.require(:acontract).permit(:BalanceSheetDate, :ContractPortfolio, :ContractReference, :HoldingPartyReference, :BPN_Balcao, :PartyReference, :Classe, :ProductClass, :ProductComponent, :AccountNature, :AccountType, :OriginDate, :MaturityDate, :IrrecoverableDate, :Currency, :Balance, :DrawnAmount, :UndrawnAmount, :Principal, :AccruedInterestAtBSD, :LossClass, :TaxaNominal, :TIR, :TipoCredito, :TipoGarantia, :TipoCliente, :CurrentDelay, :ISMitigant, :BPN_PercentagemCartao, :BPN_Val_Fee, :IsMortgage, :BPN_Val1_CapVin, :BPN_Val2_CapVen, :BPN_Val3_CapAbt, :BPN_Val5_JrsVen, :BPN_Val6_JrsAnl, :BPN_Val7_PrvRGC, :BPN_Val8_PrvEco, :BPN_Val9_PrvCrV, :BPN_Val10_PrvCCD, :BPN_Val11_PrvRP, :BPN_Val13_GarPre, :BPN_AccRef1, :BPN_AccRef2, :BPN_AccRef3, :BPN_AccRef4_AccruedInterestAtBSD, :BPN_AccRef5, :BPN_AccRef6, :BPN_AccRef7, :BPN_AccRef8, :BPN_AccRef9, :BPN_AccRef10, :BPN_AccRef11, :BPN_AccRef12_UndrawnAmount, :BPN_AccRef13, :party_id)
    end
end
